clear

M = 8;  % modulation order
fs = 122.8e6;  % sampling frequency
sample_time = 1/fs;
samples_per_frame = 1;  %  number of samples in simulation frame
frames_per_sim = 10^6;  %  number of frames  in simulation
SA_minimum_samples = 2^10; % minimum number of samples for spectrum analyzer presentation
frame_time = samples_per_frame * sample_time;  %  frame time as samples multiplication
stop_time = frames_per_sim * frame_time; % simulation stop time as multiplication of frames