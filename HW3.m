%preamble
clc; close all; clear all;

%opens rows 1:80 of the raw data on the excel file
sampleset=xlsread("Studio_3_Data.xlsx","A1:A80");

%Input number of measurement and sample
n_sample=10000;
%calculates the mean and standard deviation of the raw sample set
x=mean(sampleset);
s=std(sampleset);

%creates random number normally distributed with mean "x" and st. deviation
%"s" calculated above
for i=1:25
data=x+s*randn(i,n_sample);

%calculates the mean and standard deviation of each of each sample that
%contains 4 measurements
avg=mean(data);
stdev=std(data);

%calc mean of sampling dist
mean_A(i)=mean(avg);
stdev_B(i)=std(avg);
end

%plot figure 1 
figure(1)
err = 0.001*ones(size(mean_A));
plot(1:25,mean_A)
errorbar(1:25,mean_A,err)
xlabel('sample size')
ylabel('Mean of the sampling distribution of the mean') 

%plot figure 2 
figure(2)
plot(1:25,stdev_B)
xlabel('sample size')
ylabel('Standard deviation of the sampling distribution of the mean') 

