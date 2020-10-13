%CBEE 213 HW1 
%preamble
clear all; close all; clc;

%load saved imported data
load('HW1_data.mat')

%boxplot data
boxplot(DraftNo,MonthNo)

%Naming title and x-y axis
title('Boxplot for DraftNo vs Month')
xlabel('Month')
ylabel('Draft number data')