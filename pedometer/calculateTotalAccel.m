# code written by: Pin Hao Cheng

function[] = calculateTotalAccel( name )

raw = readtable(name);

% calculate total acceleration for every data point
for i = 1 : size(raw,1)
    raw.ax_g(i) = raw.ax(i) / 9.81; 
    raw.ay_g(i) = raw.ay(i) / 9.81;
    raw.az_g(i) = raw.az(i) / 9.81;
    raw.atotal_g(i) = sqrt( raw.ax_g(i) ^ 2 + raw.ay_g(i) ^ 2 + raw.az_g(i) ^ 2);
end

% overwrite csv
writetable(raw,name);

end
