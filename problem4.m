%preamble
clear all; close all; clc;

%load data (Cp and temperature)
load('p4_data.mat')

%Calculate Beta (B_1 and B_0) value 
Beta=((Temp'*Temp)^-1)*(Temp'*Cp);

%input value for regression coefficient
B_2=Beta(1);
B_1=Beta(2);
B_0=Beta(3);


%Fiding estimated Cp value (Cp_hat)
Cp_hat=B_2*((temp).^2)+B_1*temp+B_0;

%Finding SST and SSE
SST=sum((Cp-mean(Cp)).^2);
SSE=sum((Cp-Cp_hat).^2);
SSR=sum((Cp_hat-mean(Cp)).^2)

%Calculate sigma
sigma=sqrt(SSE/(length(temp)-2))

%calculate R square value
R_square=1-(SSE/SST)