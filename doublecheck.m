%preamble
clear all; close all; clc;

%load data (Cp and temperature)
load('p4_data.mat')

p=polyfit(temp,Cp,2)