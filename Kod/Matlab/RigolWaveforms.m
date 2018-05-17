%% Intro

clear all
close all
clc

dt = 1/4096;
t = 0:dt:2-dt;
s_max = 2^14-1;
amp_max = s_max/2;
s_zero = 2^14 / 2;
w = 2*pi;

%sine = amp_max*sin(w*t)+s_zero;
%plot(sine)

%% Test3 L1

U1 = 230;
U1_5 = 20.7;
U2 = 0.1*U1;
U11 = 0.1*U1;
U29 = 0.05*U1;
U50 = 0.03*U1;

s = U1*sin(w*t) + U1_5*sin(1.5*w*t) + U2*sin(2*w*t) + U11*sin(11*w*t) + U29*sin(29*w*t) + U50*sin(50*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot(s)
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test3L1.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file

%% Test4 L2

U1 = 0.8*230;
U1_5 = 11.5;
U2 = 0.05*U1;

s = U1*sin(w*t) + U1_5*sin(1.5*w*t) + U2*sin(2*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot([s s s s s])
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test4L2.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file

%% Test4 L3

t = 0:dt:10-dt;
U1 = 0.87*230;
U90 = 9.2;
U95 = 13.8;

s = U1*sin(w*t) + U90*sin((90/47.5)*w*t) + U95*sin((95/47.5)*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot(s)
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test4L3.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file

%% Test7 L3

t=0:dt:1-dt;
U1 = 1.05*230;
U11 = 0.005*U1;
U16 = 0.05*U1;
U41 = 0.03*U1;
U44 = 0.001*U1;

s = U1*sin(w*t) + U11*sin(11*w*t) + U16*sin(16*w*t) + U41*sin(41*w*t) + U44*sin(44*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot(s)
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test7L3.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file

%% Test8a

U1 = 210;
Uhf = 17;
fhf = 6400/50;

s = U1*sin(w*t) + Uhf*sin(fhf*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot(abs(fft([s s s s s])))
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test8a.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file


%% Test8z

t=0:dt:5-dt;
U1 = 210;
Uhf = 17;
fhf = 10090/50;

s = U1*sin(w*t) + Uhf*sin(fhf*w*t);

s = s + abs(min(s));
s = ceil((s_max / max(s)) * s);

plot(abs(fft([s s s s s])))
grid on

s_fp = uint16( s );                        % Create a 16-bit integer, but let's be specific.
Filename = 'Test8z.rdf';                  % Store in this file
fid = fopen( Filename, 'w' );              % Open the file for writing    
fwrite( fid, s_fp, 'uint16', 'ieee-le' );  % Write as 16-bit values, little endian
fclose( fid );                             % Close file

