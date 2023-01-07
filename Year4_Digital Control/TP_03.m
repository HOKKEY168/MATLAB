%% Uniform_Quantization
clc;
clear; close all;
%%input paramate
Input=[-5,-3,0,1,4,5];
partition=[0,1,3]
codebook=[-1,0.5,2,3]
[N,Xq]=quantiz(Input,partition,codebook)