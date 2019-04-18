clc; clear all
load('FlatPlateTransition_Mesh1')

[X,Y] = meshgrid(x,y);

V_norm_vector = Vx/274;
V_norm = reshape(V_norm_vector,101,184);

rhoNMean_vector = rho/(1e17);
rhoNMean_norm = reshape(rhoNMean_vector,101,184);

figure(1)
contour(V_norm,'fill','on')
colormap(gray)

figure(2)
contour(rhoNMean_norm,'fill','on')
colormap(gray)

% contour(X,Y,V_norm,20)

% % PLOTLY
% response = fig2plotly();
% plotly_url = response.url;