%Modular Code for Plotting Radioisotopic Decay
clear all
close all

%Equation and constants
No = 100; 
halflife = 5730;
lambda = log(2)/halflife; 
time = [linspace(0,halflife,105)]';
N = No*exp(-lambda*time); 

%2a
subplot(2,2,1)
plot(time,N,'-')
ylim([0 100]) 
ylabel('Percent of ^{14}C Remaining', 'FontSize', 14)
xlabel ('Age of Material (yrs) After 1 Half-Life', 'FontSize', 14)
title('Plot 1')

%2b
subplot(2,2,2)
time = [linspace(0,(halflife*20),20)]';
N = No*exp(-lambda*time)
plot(time,N,'*')
ylim([0 100]) 
ylabel('Percent of ^{14}C Remaining', 'FontSize', 14)
xlabel ('Age of Material (yrs) After 20 Half-Lifes', 'FontSize', 14)
title('Plot 2')

%2c
subplot(2,2,3)
time = [linspace(0,(halflife*6390),105)]';
N = No*exp(-lambda*time)
plot(time,N,'-')
ylim([0 100]) 
ylabel('Percent of ^{14}C Remaining', 'FontSize', 14)
xlabel ('Age of Material (yrs)', 'FontSize', 14)
title('Plot 3')
a = [0.2 0.20078125]
b = [0.2 0.125]
annotation('textarrow',a,b,'String','Hadeon Eon ')
c = [0.25 0.248958333333333]
d = [0.25 0.127615062761506]
annotation('textarrow',c,d,'String', 'Archean Eon')
e = [0.3 0.3]
f = [0.3 0.127092050209205]
annotation('textarrow',e,f,'String', 'Proterozoic Eon')
g = [0.38 0.38046875]
h = [0.38 0.126046025104602]
annotation('textarrow',g,h,'String', 'Phanerozoic Eon')

%2d+ 
subplot(2,2,4)
time = [linspace(0,(halflife*20),20)]';
N = No*exp(-lambda*time)
plot(time,N,'*')
highlight_test = time>halflife/2; 
plot(time,N,'-')
ylim([0 100])
ylabel('Percent of ^{14}C Remaining', 'FontSize', 14)
xlabel ('Age of Material (yrs)', 'FontSize', 14)
hold on %use hold on so that the previous graph is not erased
plot(time(highlight_test),N(highlight_test),'ro')
legend('^{14}C First Half-Life','^{14}C Extinct') 
title('Plot 4')

