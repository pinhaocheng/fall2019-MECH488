# code written by: Pin Hao Cheng

function [] = pedometer(name)

%import table with data
T = readtable(name);

accel = T.atotal_g;

% spacing is used to reduce arise between two neighbouring peaks
spacing = 0.05 * size(accel,1);

% plot the total acceleration 
plot(T.ax_g,'r')
hold on
plot(T.ay_g,'g')
plot(T.az_g,'m')
% plot(accel)

% label peak
findpeaks(accel,'MinPeakDistance',spacing);

% label axes
xlabel('no. of data points')
ylabel('total acceleration (G)')
title(name)
legend('a_x','a_y','a_z','a_t_o_t_a_l','peaks')
hold off
% number of strides 
numOfStrides = floor(size(findpeaks(accel,'MinPeakDistance',spacing),1)/2);

% print message to user
fprintf("The number of strides are measured as %d steps.\n",numOfStrides);
end
