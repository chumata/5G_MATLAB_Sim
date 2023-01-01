clear

M = 8;  % modulation order
fs = 122.8e6;  % sampling frequency
sample_time = 1/fs;
samples_per_frame = 100;  %  number of samples in simulation frame
frames_per_sim = 10^4;  %  number of frames  in simulation
SA_minimum_samples = 2^10; % minimum number of samples for spectrum analyzer presentation
frame_time = samples_per_frame * sample_time;  %  frame time as samples multiplication
stop_time = frames_per_sim * frame_time; % simulation stop time as multiplication of frames
n_PRBs = 273; %  number of signal PRBs
n_PREs = 12*n_PRBs; %  number of signal PREs
OFDM_FFT_size = 4096; %  OFDM modulator FFT size 
symbol_time = OFDM_FFT_size * sample_time; %  OFDM symbol time period
cp_time = 2.34e-6; %  normal CP length of mu = 1
cp_samples = ceil((cp_time/symbol_time)*4096); %  CP number of samples
half_guard_samples = (OFDM_FFT_size-(n_PREs+cp_samples))/2; %  number of samples for one side guardband