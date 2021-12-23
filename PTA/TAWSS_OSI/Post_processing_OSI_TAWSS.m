clear
close
clc

dati_0 = load('wss_0.txt');
dati_005 = load('wss_005.txt');
dati_01 = load('wss_01.txt');
dati_015 = load('wss_015.txt');
dati_02 = load('wss_02.txt');
dati_025 = load('wss_025.txt');
dati_03 = load('wss_03.txt');
dati_035 = load('wss_035.txt');
dati_04 = load('wss_04.txt');
dati_045 = load('wss_045.txt');
dati_05 = load('wss_05.txt');
dati_055 = load('wss_055.txt');
dati_06 = load('wss_06.txt');
dati_065 = load('wss_065.txt');
dati_07 = load('wss_07.txt');
dati_075 = load('wss_075.txt');
dati_08 = load('wss_08.txt');
dati_085 = load('wss_085.txt');
dati_09 = load('wss_09.txt');
dati_095 = load('wss_095.txt');

x = dati_0(:,5);
y = dati_0(:,6);
z = dati_0(:,7);

%calcolo TAWSS
mag_0 = dati_0(:,4);   % mag di WSS in Pa
mag_005 = dati_005(:,4);
mag_01 = dati_01(:,4);
mag_015 = dati_015(:,4);
mag_02 = dati_02(:,4);
mag_025 = dati_025(:,4);
mag_03 = dati_03(:,4);
mag_035 = dati_035(:,4);
mag_04 = dati_04(:,4);
mag_045 = dati_045(:,4);
mag_05 = dati_05(:,4);
mag_055 = dati_055(:,4);
mag_06 = dati_06(:,4);
mag_065 = dati_065(:,4);
mag_07 = dati_07(:,4);
mag_075 = dati_075(:,4);
mag_08 = dati_08(:,4);
mag_085 = dati_085(:,4);
mag_09 = dati_09(:,4);
mag_095 = dati_095(:,4);


clear i;
for i=1:length(mag_085)
    TAWSS = (mag_0 + mag_005 + mag_01 + mag_015 + mag_02 + mag_025 + mag_03+ mag_035 + mag_04+ mag_045+mag_05+mag_055+mag_06+mag_065+mag_07+mag_075+mag_08+mag_085+mag_09+mag_095)*(0.05/0.95);
end
clear txt_TAWSS;
txt_TAWSS =[ TAWSS, x, y, z];  %matrice per file txt
writematrix(txt_TAWSS, 'TAWSS.txt')    %esportazione file 
% calcolo OSI
tau_x_0 = dati_0(:,1);  
tau_x_005 = dati_005(:,1);
tau_x_01 = dati_01(:,1);
tau_x_015 = dati_015(:,1);
tau_x_02 = dati_02(:,1);
tau_x_025 = dati_025(:,1);
tau_x_03 = dati_03(:,1);
tau_x_035 = dati_035(:,1);
tau_x_04 = dati_04(:,1);
tau_x_045 = dati_045(:,1);
tau_x_05 = dati_05(:,1);
tau_x_055 = dati_055(:,1);
tau_x_06 = dati_06(:,1);
tau_x_065 = dati_065(:,1);
tau_x_07 = dati_07(:,1);
tau_x_075 = dati_075(:,1);
tau_x_08 = dati_08(:,1);
tau_x_085 = dati_085(:,1);
tau_x_09 = dati_09(:,1);
tau_x_095 = dati_095(:,1);



clear j;
for j=1:length(mag_085)  %trasformato in Pa
    sum_tau_x = (tau_x_0 + tau_x_005 + tau_x_01 + tau_x_015 + tau_x_02 + tau_x_025 + tau_x_03+ tau_x_035 +tau_x_04+ tau_x_045+tau_x_05+tau_x_055+tau_x_06+tau_x_065+tau_x_07+tau_x_075+tau_x_08+tau_x_085+tau_x_09+tau_x_095)*(0.05/0.95)*1060;
end

tau_y_0 = dati_0(:,2);  
tau_y_005 = dati_005(:,2);
tau_y_01 = dati_01(:,2);
tau_y_015 = dati_015(:,2);
tau_y_02 = dati_02(:,2);
tau_y_025 = dati_025(:,2);
tau_y_03 = dati_03(:,2);
tau_y_035 = dati_035(:,2);
tau_y_04 = dati_04(:,2);
tau_y_045 = dati_045(:,2);
tau_y_05 = dati_05(:,2);
tau_y_055 = dati_055(:,2);
tau_y_06 = dati_06(:,2);
tau_y_065 = dati_065(:,2);
tau_y_07 = dati_07(:,2);
tau_y_075 = dati_075(:,2);
tau_y_08 = dati_08(:,2);
tau_y_085 = dati_085(:,2);
tau_y_09 = dati_09(:,2);
tau_y_095 = dati_095(:,2);
clear k;
for k=1:length(mag_085)  %trasformato in Pa
    sum_tau_y = (tau_y_0 + tau_y_005 + tau_y_01 + tau_y_015 + tau_y_02 + tau_y_025 + tau_y_03+ tau_y_035 +tau_y_04+ tau_y_045+tau_y_05+tau_y_055+tau_y_06+tau_y_065+tau_y_07+tau_y_075+tau_y_08+tau_y_085+tau_y_09+tau_y_095)*(0.05/0.95)*1060;
end

tau_z_0 = dati_0(:,3);  
tau_z_005 = dati_005(:,3);
tau_z_01 = dati_01(:,3);
tau_z_015 = dati_015(:,3);
tau_z_02 = dati_02(:,3);
tau_z_025 = dati_025(:,3);
tau_z_03 = dati_03(:,3);
tau_z_035 = dati_035(:,3);
tau_z_04 = dati_04(:,3);
tau_z_045 = dati_045(:,3);
tau_z_05 = dati_05(:,3);
tau_z_055 = dati_055(:,3);
tau_z_06 = dati_06(:,3);
tau_z_065 = dati_065(:,3);
tau_z_07 = dati_07(:,3);
tau_z_075 = dati_075(:,3);
tau_z_08 = dati_08(:,3);
tau_z_085 = dati_085(:,3);
tau_z_09 = dati_09(:,3);
tau_z_095 = dati_095(:,3);
clear l;
for l=1:length(mag_085)  %trasformato in Pa
    sum_tau_z = (tau_z_0 + tau_z_005 + tau_z_01 + tau_z_015 + tau_z_02 + tau_z_025 + tau_z_03+ tau_z_035 +tau_z_04+ tau_z_045+tau_z_05+tau_z_055+tau_z_06+tau_z_065+tau_z_07+tau_z_075+tau_z_08+tau_z_085+tau_z_09+tau_z_095)*(0.05/0.95)*1060;
end

clear m;
for m=1:length(mag_085)  %trasformato in Pa
    OSI_num = sqrt((sum_tau_x.^2)+(sum_tau_y.^2)+(sum_tau_z.^2));
end
clear n;
for n=1:length(mag_085)  %trasformato in Pa
    OSI= (1/2)*(1-(OSI_num./TAWSS));
end
clear txt_OSI;
txt_OSI =[ OSI, x, y, z];  %matrice per file txt
writematrix(txt_OSI, 'OSI.txt')    %esportazione file