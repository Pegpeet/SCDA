sc = 10;

%% index record
% y from 1965 to 1998
y = [0, 0, 1092.23, 1100.01, 1234.32, 1460.85, 1570.38, 1819.79, 1391.27, 1507.60,...
    1541.44, 1631.21, 1628.60, 1609.33, 1801.68, 1809.08, 1754.74, 1779.48, 1699.13,...
    1681.39, 1610.46, 1918.45, 1717.07, 1415.69, 1229.02, 1082.02, 1096.61, 1045.84,...
    1137.03, 981.1, 647.67, 992.65, 968.62, 926.83, 952.96, 865.64]/sc; 


T = length(y); %36;
time = 1:T;               
stdT = (time - mean(time))/std(time);
%% frost days 
% f from 1963 to 1997
f = [0.1922, 0.3082, 0.3082, -0.9676, 0.5401, 0.3082, 1.1995, 0.1921, -0.8526,...
    -1.0835, -0.6196, -1.1995, -0.5037, -0.1557, 0.0762, 2.628, -0.3877, -0.968,...
    1.9318, -0.6196, -0.3877, 1.700, 2.2797, 0.6561, -0.8516, -1.0835, -1.0835,...
    0.1922, 0.1922, -0.1557, -0.5037, -0.8516, 0.8880, -0.0398, -1.1995, 0];


%% recovery data
% m from 1963 to 1997
m=[13,4,1,2,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1124;
    0,16,4,3,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1259;
    0,0,11,1,1,1,0,2,1,1,1,1,2,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1082;
    0,0,0,10,4,2,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1595;
    0,0,0,0,11,1,5,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1596;
    0,0,0,0,0,9,5,4,0,2,2,2,1,2,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2091;
    0,0,0,0,0,0,11,9,4,3,1,1,1,3,2,2,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1964;
    0,0,0,0,0,0,0,8,4,2,0,0,0,1,2,3,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1942;
    0,0,0,0,0,0,0,0,4,1,1,2,2,1,3,3,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2444;
    0,0,0,0,0,0,0,0,0,8,2,2,2,6,1,5,2,1,3,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,3055;
    0,0,0,0,0,0,0,0,0,0,16,1,1,1,2,3,2,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3412
    0,0,0,0,0,0,0,0,0,0,0,13,4,4,7,3,1,1,1,1,0,0,2,1,0,0,0,0,0,0,0,0,0,0,0,3907;
    0,0,0,0,0,0,0,0,0,0,0,0,11,4,0,2,1,1,2,2,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,2538;
    0,0,0,0,0,0,0,0,0,0,0,0,0,11,3,5,1,3,3,2,3,0,1,0,1,1,0,0,0,0,0,0,0,0,0,3270;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,5,0,5,4,2,1,2,3,0,0,0,1,0,0,0,0,0,0,0,0,3443;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,5,2,2,0,5,3,0,0,0,1,0,0,0,0,0,0,0,0,0,3132
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,4,6,1,3,3,2,0,1,0,0,1,0,1,0,0,0,0,0,3275;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,8,1,2,4,5,3,0,1,2,0,0,1,0,0,0,0,0,3447;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23,2,2,3,3,3,1,0,0,0,0,0,0,0,0,0,0,3902;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,6,2,0,1,1,0,0,1,0,0,0,0,0,0,2860;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19,7,6,4,0,0,2,0,0,0,1,2,0,0,1,4077;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,3,2,0,0,0,0,1,0,1,0,0,0,0,4017;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,2,5,2,0,2,2,2,0,0,0,0,0,4827;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,4,3,4,4,2,2,1,0,2,0,1,4732;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14,2,1,2,2,3,0,0,3,0,0,5000;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,4,4,3,0,2,1,0,2,1,4769;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,4,2,4,2,2,3,1,1,3603;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,3,3,2,1,0,2,0,4147;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9,4,6,1,0,1,0,4293;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,3,1,2,0,1,3455;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,5,2,2,1,3673;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,4,6,0,3900;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,5,1,3578;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,4481;
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5,4334];

m(:,36) = round(m(:,36)/sc);

[T1, T2] =size(m);
T2 = T2 - 1;