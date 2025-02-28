clear all; close all;

addpath(genpath('../../../aed_matlab_modeltools/TUFLOWFV/tuflowfv/'));
addpath(genpath('~/AED Dropbox/Matt Hipsey/GitHub/aed_matlab_modeltools/TUFLOWFV/tuflowfv/'));

ncfile1 = '/Volumes/T7 Touch/Erie/Output.00/erie_00_AED.nc';
ncfile2 = '/Volumes/T7 Touch/Erie/Output.01/erie_01_AED.nc';

var = 'WQ_DIAG_MAG_TMALG';

titletxt = 'My variable name (units)';

del_caxis = [-2 2];
del_clip = [-0.2 0.2];

conv1 = 1;
conv2 = 1; %just for testing, make sure these match.

thedepth = 'bottom';%or bottom

%_ BC's

bc(1).data = {'2002-14_flwo_Nia_v02',672609.00,4747642.00,'^'};
bc(2).data = {'2002-14_flwi_Det_v02',321970.00	4658195.00,'^'};
bc(3).data = {'2002-14_flwi_Gra_ON-WQ_v02',616680.00,4744330.00,'^'};
bc(4).data = {'2002-14_flwi_Mau-WQ_v02',304206.72,4618817.56,'^'};
bc(5).data = {'2002-14_flwi_Snd-WQ_v02',362406.72,4590617.56,'^'};
bc(6).data = {'2002-14_flwi_Cuy-WQ_v02',438120.00,4594766.00,'^'};


shp = shaperead('contour_15.shp');



% import in the time (incase each netcdf has a different timesteps);
dat = tfv_readnetcdf(ncfile1,'time',1);
mtime1 = dat.Time;
dat = tfv_readnetcdf(ncfile2,'time',1);
mtime2 = dat.Time;

clear functions; clear dat;

start_timeave = datenum(2013,08,01);
end_timeave = datenum(2013,08,31);


ncfile1_time = find(mtime1 >= start_timeave & mtime1 <= end_timeave);
ncfile2_time = find(mtime2 >= start_timeave & mtime2 <= end_timeave);


%___ Processing for the faces and surface / bottom indicies
data = tfv_readnetcdf(ncfile1,'timestep',1);

vert(:,1) = data.node_X;
vert(:,2) = data.node_Y;

faces = data.cell_node';

%--% Fix the triangles
faces(faces(:,4)== 0,4) = faces(faces(:,4)== 0,1);


surf_ind = data.idx3;

bottom_ind(1:length(data.idx3)-1) = data.idx3(2:end) - 1;
bottom_ind(length(data.idx3)) = length(data.idx3);

clear data; clear functions;

%__ Data inport

dat = tfv_readnetcdf(ncfile1,'names',{var});

if strcmpi(thedepth,'surface')
    
    data1_raw = dat.(var)(surf_ind,ncfile1_time);
else
    data1_raw = dat.(var)(bottom_ind,ncfile1_time);
end
clear functions; clear dat;

dat = tfv_readnetcdf(ncfile2,'names',{var});

if strcmpi(thedepth,'surface')
    
    data2_raw = dat.(var)(surf_ind,ncfile1_time);
else
    data2_raw = dat.(var)(bottom_ind,ncfile1_time);
end
clear functions; clear dat;

data1 = mean(data1_raw,2);clear data1_raw
data2 = mean(data2_raw,2);clear data2_raw

data1 = data1 * conv1;
data2 = data2 * conv2;

del = data2 - data1;


figure('position',[680   299   517   679]);

axes('position',[0 0.5 1 0.5]);

mapshow('background.png');hold on;

figax = patch('faces',faces,'vertices',vert,'FaceVertexCData',del);shading flat;hold on

newmap = blank_col(del_caxis,del_clip);
colormap(newmap);

axis equal;
axis off;

xlim([288572.434707849          678987.961821544]);
ylim([4542516.17645093          4797647.53097743]);

caxis(del_caxis);
cb = colorbar('southoutside');
set(cb,'position',[0.25 0.487 0.5 0.01]);

text(0.6,0.1,titletxt,'fontsize',12,'fontweight','bold','units','normalized');

for i = 1:length(bc)
    scatter(bc(i).data{2},bc(i).data{3},bc(i).data{4},'r');
end

%15m contour
mapshow(shp,'color','r');


axes('position',[0 0 1 0.5]);

mapshow('background2.png');hold on;


figax = patch('faces',faces,'vertices',vert,'FaceVertexCData',del);shading flat;hold on

colormap(newmap);

axis equal;
axis off;

 xlim([553377.479810994          674488.300789605]);
 ylim([4708152.12665381          4771706.05580334]);
caxis(del_caxis);

cb2 = colorbar('southoutside');
set(cb2,'position',[0.25 0.035 0.5 0.01]);

% set(gcf, 'PaperPositionMode', 'manual');
% set(gcf, 'PaperUnits', 'centimeters');
% xSize = 16;
% ySize = 23;
% xLeft = (21-xSize)/2;
% yTop = (30-ySize)/2;
% set(gcf,'paperposition',[0 0 xSize ySize])


saveas(gcf,'delmap.png');