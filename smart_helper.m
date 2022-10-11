%% Number of pins 
% 13,500 4.95 w/o UO2 fuel rods
% 1304 Al2O3-B4C primary burnable absorber 
% 244 12 w/o Gd2O3 1.8 w/o UO2 integrated burnale absorber 
% 57*21 control rods
%   B4C shutdown
%   Ag-In-Cd regulating
% 57*4 Instrumentsion thimbles

pins=57*17*17
pins=13500+1304+244+57*21+57*4
%% UO2 weight fraction 
clear
clc
e = 4.95/100; % 3 w/o enriched uranium  
m = [(1-e)*238 e*235 2*16]; % atomic mass
wf = m/sum(m); % weight fraction 
for i=1:length(wf) 
    fprintf('%.5f\n',wf(i))
end
sum(wf)

%% Al2O3-B4C mixture density from component density 
clear
clc
% Al2O3-B4C
m_al2o3 = [2*27 3*16];
m_b4c = [4*(0.189*10+0.811*11) 0.9884*12+0.0116*13];
m = sum(m_al2o3)+sum(m_b4c);

x_al2o3 = sum(m_al2o3)/m; % mass fraction
x_b4c = sum(m_b4c)/m;

rho_al2o3 = 3.970000;
rho_b4c = 2.520000;

rho = ((x_al2o3/rho_al2o3)+(x_b4c/rho_b4c))^-1;
fprintf('%.5f\n',rho);

m_al2o3/m
m_b4c/m

%% 12w/o enriched Gd2O3 weight fraction calculation 
clear 
clc
% natural composition of Gd
iso_gd = [152 154 155 156 157 158 160] % isotopes
fa_gd =[0.0020 0.0218 0.1480 0.2047 0.1565 0.2484 0.2186] % weight frac

wf_155_Gd_percent = 0.12; % enrichment target w/o Gd155
wf_155_Gd_natural = 0.1480;
wf_A_Gd_natural =[0.0020 0.0218 0.1480 0.2047 0.1565 0.2484 0.2186]
wf_A_Gd_percent = wf_A_Gd_natural*((1-wf_155_Gd_percent)/(1-wf_155_Gd_natural));
wf_A_Gd_percent(3) = wf_155_Gd_percent;
wf_A_Gd_percent
sum(wf_A_Gd_percent)

m_gd = wf_A_Gd_percent.*iso_gd; % Gd elemental mass 
m_gd2o3 = [2*m_gd 3*16]
wf_gd2o3 = m_gd2o3/sum(m_gd2o3)
sum(wf_gd2o3)

%% lower left position of a rectangular lattice 
pitch = 1.26;
grid = 17; 
lower_left = -(pitch*grid)/2

%% print lattice universe python style 
clear 
clc
grid=9; 
for i=1:grid
    fprintf('[');
    for j=1:grid
        fprintf('fa, ');
    end
    fprintf('],\n');
end