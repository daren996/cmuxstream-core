% Loading the dataset. X and y
load('/Users/hemanklamba/Dropbox/18-interactive-outliers/code/synData.mat')
% Add noise columns
% Columns to add - col
n_dim = 100;
noise_mean = 0;
noise_std = 5;
[X_dash,y_dash] = add_noise(X,y,n_dim,noise_mean,noise_std);

data = [X_dash,y_dash];
csvwrite('/Users/hemanklamba/Dropbox/18-highdim-stream-outlier/data/synData-withNoise.mat',data);