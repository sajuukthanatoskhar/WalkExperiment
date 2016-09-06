%THis is to have a look at the spectrogram of Sajee's TEST walk

close all;
data1 = dlmread('VO2Experiment\ControlVideoData\Session_914_Sensor_2.txt');
data2 = dlmread('VO2Experiment\ControlVideoData\Session_914_Sensor_4.txt');
section = 2
Fs = 100
fac = 1
figure(1)
spectrogram(data1(:,section),ceil(fac*256),ceil(fac*240),ceil(fac*256),Fs,'yaxis')
xlabel('Time(in Samples -> 100 sa/s)')

figure(2)
spectrogram(data2(:,section),ceil(fac*256),ceil(fac*240),ceil(fac*256),Fs,'yaxis')
xlabel('Time(in Samples -> 100 sa/s)')

