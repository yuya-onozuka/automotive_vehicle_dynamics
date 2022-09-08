Sf = out.ScopeData.signals(1,1).values(:,1);% front tire steer angle (rad)
B = out.ScopeData.signals(1,2).values(:,1);% side slip angle (rad)
r = out.ScopeData.signals(1,3).values(:,1);% yaw rate (rad/s)
%---------------------------------------------------------------------
% The frequency response is calculated by using Fourier transform.
gr = etfe([r,Sf],[],2^15,0.001);
% The gain and the phase angle of the frequency response are calculated.
[amp,phase,w] = bode(gr);
% An extra dimension is deleted.
amp = squeeze(amp);
phase = squeeze(phase);
% Drawing gain-frequency relation.
figure;
a1 = subplot(2,1,1);
graph1 = semilogx(w/(2*pi),20*log10(amp));
set(get(a1,'XLabel'),'String','Frequency (Hz)');
set(get(a1,'YLabel'),'String','Gain (dB)');
axis([0.01 3 6 18]);
grid on;
% Drawing phase-frequency relation.
a2 = subplot(2,1,2);
graph2 = semilogx(w/(2*pi),phase);
set(get(a2,'XLabel'),'String','Frequency (Hz)');
set(get(a2,'YLabel'),'String','Phase angle (deg)');
axis([0.01 3 -80 40]);
grid on;