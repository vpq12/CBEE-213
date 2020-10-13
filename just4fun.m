%preamble
clc; close all; clear all;

%opens rows 1:80 of the raw data on the excel file
sampleset=xlsread("Studio_3_Data.xlsx","A1:A80");

%Input number of measurement and sample
n_sample=10000;
n_mea=3;
%calculates the mean and standard deviation of the raw sample set
x=mean(sampleset);
s=std(sampleset);


data=x+s*randn(n_mea,n_sample);

%calculates the mean and standard deviation of each of each sample that
%contains 4 measurements
avg=mean(data);
stdev=std(data);

% %calc mean of sampling dist
% mean_A(i)=mean(avg);
% stdev_B(i)=std(avg);
% end

CI_high=avg+tinv(0.975,n_mea-1)*stdev/sqrt(n_mea);
CI_low=avg-tinv(0.975,n_mea-1)*stdev/sqrt(n_mea);