%preamble
clear all; close all; clc;

%input stdev and mean values
stdev_initial=0.12; 
mean_initial=16.2 ;

%Input number of measurements and trials
n_measurements=input('Input number of measurements ');
n_trials=input('Input number of trials ');

%initialize x less than 16(x_L16) and x_btw, and x greater than 16.3
x_L16=0;
x_btw=0;
other=0;

%for loop to iterate trials
for idx=1:n_trials
    %for loop to iterate measurements
for i=1:n_measurements
    %randomize z-scores for each measurement
    z=randn(n_measurements,1);
    %generate x from z-scores 
    x(idx,i)=mean_initial +z(i,1)*stdev_initial;
%condition if x is less than 16    
if x(idx,i)<16
    x_L16=x_L16+1;
%condition if x is between 16 and 16.3   
elseif  x(idx,i)>=16 && x(i)<=16.3
        x_btw=x_btw+1;
 %otherwise
    else
        other=other+1;
%end of nested for loop, and if-else functions     
end
end
end
   
%calculate new mean and stdev for each trial  
new_mean=mean(x);
new_stdev=std(x);

%some funny count code that I have never learn before:D 
% count = sum(x(:,1:5)<16)
% count2 = sum(x(:,1:5)>16 & (x(:,1:5)<16.3))



%clear command window after input values 
clc;

%display values
disp('number of x less than 16 oz')
disp(x_L16)

disp('number of x between 16 and 16.3')
disp(x_btw)

disp('Here are the new means')
disp(new_mean)

disp('Here are the new standard deviation values')
disp(new_stdev)