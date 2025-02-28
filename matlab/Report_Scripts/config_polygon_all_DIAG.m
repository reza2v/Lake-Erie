% Configuration____________________________________________________________
addpath(genpath('tuflowfv'));


%fielddata = 'lowerlakes';

% varname = {...
% 'SAL',...
% 'TEMP',...
% };
% 
% 
%     
% def.cAxis(1).value = [0 35];
% def.cAxis(2).value = [10 40];


% varname = {...
% 'WQ_OXY_OXY',...
% 'WQ_CAR_DIC',...
% 'WQ_CAR_PH',...
% 'WQ_CAR_CH4',...
% 'WQ_SIL_RSI',...
% 'WQ_NIT_AMM',...
% 'WQ_NIT_NIT',...
% 'WQ_PHS_FRP',...
% 'WQ_PHS_FRP_ADS',...
% 'WQ_OGM_DOC',...
% 'WQ_OGM_POC',...
% 'WQ_OGM_DON',...
% 'WQ_OGM_PON',...
% 'WQ_OGM_DOP',...
% 'WQ_OGM_POP',...
% 'WQ_PHY_GRN',...
% 'WQ_GEO_FEII',...
% 'WQ_GEO_FEIII',...
% 'WQ_GEO_AL',...
% 'WQ_GEO_CL',...
% 'WQ_GEO_SO4',...
% 'WQ_GEO_NA',...
% 'WQ_GEO_K',...
% 'WQ_GEO_MG',...
% 'WQ_GEO_CA',...
% 'WQ_GEO_PE',...
% };
varname = {...
'WQ_DIAG_TRC_SS1_VVEL',...
'WQ_DIAG_TRC_D_TAUB',...
'WQ_DIAG_TRC_RESUS',...
'WQ_DIAG_OXY_SED_OXY',...
'WQ_DIAG_OXY_ATM_OXY_FLUX',...
'WQ_DIAG_OXY_SAT',...
'WQ_DIAG_SIL_SED_RSI',...
'WQ_DIAG_NIT_NITRIF',...
'WQ_DIAG_NIT_DENIT',...
'WQ_DIAG_NIT_ANAMMOX',...
'WQ_DIAG_NIT_DNRA',...
'WQ_DIAG_NIT_SED_AMM',...
'WQ_DIAG_NIT_SED_NIT',...
'WQ_DIAG_PHS_SED_FRP',...
'WQ_DIAG_OGM_PSED_POC',...
'WQ_DIAG_OGM_PSED_PON',...
'WQ_DIAG_OGM_PSED_POP',...
'WQ_DIAG_OGM_CDOM',...
'WQ_DIAG_PHY_DINOF_NTOP',...
'WQ_DIAG_PHY_CYANO_NTOP',...
'WQ_DIAG_PHY_NODUL_NTOP',...
'WQ_DIAG_PHY_CHLOR_NTOP',...
'WQ_DIAG_PHY_CRYPT_NTOP',...
'WQ_DIAG_PHY_PSED_PHY',...
'WQ_DIAG_PHY_GPP',...
'WQ_DIAG_PHY_NCP',...
'WQ_DIAG_PHY_PPR',...
'WQ_DIAG_PHY_NPR',...
'WQ_DIAG_PHY_NUP',...
'WQ_DIAG_PHY_PUP',...
'WQ_DIAG_PHY_CUP',...
'WQ_DIAG_PHY_PAR',...
'WQ_DIAG_PHY_TCHLA',...
'WQ_DIAG_PHY_TPHYS',...
'WQ_DIAG_PHY_IN',...
'WQ_DIAG_PHY_IP',...
'WQ_DIAG_PHY_MPB',...
'WQ_DIAG_PHY_BPP',...
'WQ_DIAG_PHY_MPBV',...
'WQ_DIAG_MAG_CLADOPHORA_NTOP',...
'WQ_DIAG_MAG_CLADOPHORA_FI',...
'WQ_DIAG_MAG_CLADOPHORA_FNIT',...
'WQ_DIAG_MAG_CLADOPHORA_FPHO',...
'WQ_DIAG_MAG_CLADOPHORA_FSIL',...
'WQ_DIAG_MAG_CLADOPHORA_FT',...
'WQ_DIAG_MAG_CLADOPHORA_FSAL',...
'WQ_DIAG_MAG_CLADOPHORA_FI_BEN',...
'WQ_DIAG_MAG_CLADOPHORA_FNIT_BEN',...
'WQ_DIAG_MAG_CLADOPHORA_FPHO_BEN',...
'WQ_DIAG_MAG_CLADOPHORA_FT_BEN',...
'WQ_DIAG_MAG_CLADOPHORA_FSAL_BEN',...
'WQ_DIAG_MAG_GPP',...
'WQ_DIAG_MAG_PAR',...
'WQ_DIAG_MAG_EXTC',...
'WQ_DIAG_MAG_TMALG',...
'WQ_DIAG_MAG_IN',...
'WQ_DIAG_MAG_IP',...
'WQ_DIAG_BIV_NUM',...
'WQ_DIAG_BIV_NMP',...
'WQ_DIAG_BIV_TBIV',...
'WQ_DIAG_BIV_GRZ',...
'WQ_DIAG_BIV_RESP',...
'WQ_DIAG_BIV_MORT',...
'WQ_DIAG_BIV_EXCR',...
'WQ_DIAG_BIV_EGST',...
'WQ_DIAG_BIV_FT',...
'WQ_DIAG_BIV_FD',...
'WQ_DIAG_BIV_FG',...
'WQ_DIAG_BIV_FR',...
'WQ_DIAG_BIV_PF',...
'WQ_DIAG_BIV_TGRZ',...
'WQ_DIAG_TOT_TN',...
'WQ_DIAG_TOT_TP',...
'WQ_DIAG_TOT_TOC',...
'WQ_DIAG_TOT_TSS',...
'WQ_DIAG_TOT_LIGHT',...
'WQ_DIAG_TOT_PAR',...
'WQ_DIAG_TOT_UV',...
'WQ_DIAG_TOT_EXTC',...
};

% varname = {...
%     'WQ_DIAG_PHY_TCHLA',...
%     'WQ_DIAG_TOT_TP',...
% };
% 
% 
%     
% def.cAxis(1).value = [0 15];
% def.cAxis(2).value = [0 0.05];

% varname = {...
%     'WQ_PHS_FRP',...
%     'WQ_OXY_OXY',...
% };
% 
% 
%     
% def.cAxis(1).value = [0 0.03];
% def.cAxis(2).value = [10 14];

% 
% varname = {...
%     'WQ_PHS_FRP',...
%    % 'WQ_OXY_OXY',...
% };
% 
% 
%     
% def.cAxis(1).value = [0 0.035];
%def.cAxis(1).value = [2 14];

% 
% def.cAxis(3).value = [0 30];
% def.cAxis(4).value = [0 2];
% def.cAxis(5).value = [0 250];
% def.cAxis(6).value = [0 500];
% def.cAxis(7).value = [0 1];
% def.cAxis(8).value = [0 400];
% def.cAxis(9).value = [0 30];
% def.cAxis(10).value = [0 50];
% def.cAxis(11).value = [0 5];
% def.cAxis(12).value = [0 1];
% def.cAxis(13).value = [0 1000];
% def.cAxis(14).value = [0 500];
% def.cAxis(15).value = [0 100];
% def.cAxis(16).value = [0 50];
% def.cAxis(17).value = [0 5];
% def.cAxis(18).value = [0 10];
% def.cAxis(19).value = [0 750];
% def.cAxis(20).value = [0 1];
% def.cAxis(21).value = [0 1];
% def.cAxis(22).value = [0 5];
% def.cAxis(23).value = [0 15e4];
% def.cAxis(24).value = [0 10000];
% def.cAxis(25).value = [0 15e4];
% def.cAxis(26).value = [0 3000];
% def.cAxis(27).value = [0 15000];
% def.cAxis(28).value = [0 5000];
% def.cAxis(29).value = [0 20];
% def.cAxis(30).value = [-1 1];
% def.cAxis(31).value = [0 750];
% def.cAxis(32).value = [0 30];
% def.cAxis(33).value = [0 10000];
% def.cAxis(34).value = [0 300];
% def.cAxis(35).value = [0 1000];
% def.cAxis(36).value = [-2 2];
% def.cAxis(37).value = [0 0.5];
% def.cAxis(38).value = [0 75];
% def.cAxis(39).value = [0 30];
% def.cAxis(40).value = [0 75];
% def.cAxis(41).value = [0 125];

%  varname = {...
%      'WQ_DIAG_PHY_TCHLA',...
%      };
% % 
%  def.cAxis(1).value = [0 50];
% def.cAxis(2).value = [0 0.75];

polygon_file = 'GIS/Erie_Small.shp';

plottype = 'timeseries'; %timeseries or 'profile'
%plottype = 'profile'; % or 'profile'

% Add field data to figure
plotvalidation = true; % true or false

plotdepth = {'bottom'}; % Cell with either one or both
%plotdepth = {'surface'};%,'bottom'}; % Cell with either one or both

istitled = 1;
isylabel = 1;
islegend = 1;

filetype = 'eps';
def.expected = 1; % plot expected WL

addBottom = 1;

% ____________________________________________________________Configuration

% Models___________________________________________________________________


outputdirectory = 'F:\Dropbox\Data_Erie\Results\tfv_004_2013_MET_aed2_2018_BIV_ICE_RST\Fill_TS_Y_Scale\';
% ____________________________________________________________Configuration

% Models___________________________________________________________________


 ncfile(1).name = 'D:\Simulations\Erie\Lake Erie\TFVAED2\tfv_004_2013_MET_aed2_2018_BIV_ICE_RST\Output\erie_AED_DIAG.nc';
 ncfile(1).symbol = {'-';'--'};
 ncfile(1).colour = {'b','r'}; % Surface and Bottom
 ncfile(1).legend = '2018 Simulation v1';
 ncfile(1).translate = 1;
 
%  ncfile(2).name = 'D:\Studysites\Erie\Simulations\20160602_Erie_2013_WSnetcdf_AED2\Output\erie__AED.nc';
%  ncfile(2).symbol = {'-';'--'};
%  ncfile(2).colour = {'b','b'}; % Surface and Bottom
%  ncfile(2).legend = 'CEWH_GCH_ASS';
%  ncfile(2).translate = 1;
%  
%  ncfile(3).name = 'D:\Studysites\Lowerlakes\025_noALL_AED2_WS20_SC_Flow_off_IC2_NIT_Flow\Output\lower_lakes.nc';
%  ncfile(3).symbol = {'-';'--'};
%  ncfile(3).colour = {'g','g'}; % Surface and Bottom
%  ncfile(3).legend = 'No eWater';
%  ncfile(3).translate = 1;


%  ncfile(1).name = 'D:\Studysites\Lowerlakes\034_obs_AED2_LCFlow_IC2_NIT\Output\lower_lakes.nc';
%  ncfile(1).symbol = {'-';'--'};
%  ncfile(1).colour = {'b','b'}; % Surface and Bottom
%  ncfile(1).legend = 'v34';
%  ncfile(1).translate = 1;
%  
%  ncfile(2).name = 'D:\Studysites\Lowerlakes\035_obs_LL_Only_TFV_AED2_Inf\Output\lower_lakes.nc';
%  ncfile(2).symbol = {'-';'--'};
%  ncfile(2).colour = {'r','r'}; % Surface and Bottom
%  ncfile(2).legend = 'v35 LL';
%  ncfile(2).translate = 1;





yr = 2013;



% Defaults_________________________________________________________________

% Makes start date, end date and datetick array
%def.datearray = datenum(yr,0def.datearray = datenum(yr,01:4:36,01);
%def.datearray = datenum(yr,1:12:96,01);
%.datearray = datenum(yr,01:4:48,01);
def.datearray = datenum(yr,11:1:15,01);
%def.datearray = datenum(yr,01:4:48,01);
%def.datearray = datenum(yr,01:1:4,01);

def.dateformat = 'mm-yyyy';
% Must have same number as variable to plot & in same order

def.dimensions = [10 6]; % Width & Height in cm

def.dailyave = 0; % 1 for daily average, 0 for off. Daily average turns off smoothing.
def.smoothfactor = 3; % Must be odd number (set to 3 if none)

def.fieldsymbol = {'.','.'}; % Cell with same number of levels
def.fieldcolour = {'m',[0.6 0.6 0.6]}; % Cell with same number of levels

def.font = 'Arial';

def.xlabelsize = 7;
def.ylabelsize = 7;
def.titlesize = 12;
def.legendsize = 6;
def.legendlocation = 'northwest';

def.visible = 'off'; % on or off
