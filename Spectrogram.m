%THis is to have a look at the spectrogram of someone's walk
%We utilised gyroscopes for this, they had a Sampling Frequency of 100 Hz.  


close all;
data1 = dlmread('VO2Experiment\ControlVideoData\Session_914_Sensor_2.txt'); %Data to be read
data2 = dlmread('VO2Experiment\ControlVideoData\Session_914_Sensor_4.txt'); %Data to be read
section = 2  %Unused
Fs = 100  %Sample rate of gyroscopes
fac = 1  % I have no idea what this is
figure(1)
spectrogram(data1(:,section),ceil(fac*256),ceil(fac*240),ceil(fac*256),Fs,'yaxis')  %refer to the 
xlabel('Time(in Samples -> 100 sa/s)')

figure(2)
spectrogram(data2(:,section),ceil(fac*256),ceil(fac*240),ceil(fac*256),Fs,'yaxis')
xlabel('Time(in Samples -> 100 sa/s)')

