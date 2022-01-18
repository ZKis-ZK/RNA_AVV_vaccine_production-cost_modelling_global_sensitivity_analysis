function [y_out varargout] = user_defined(x_in, varargin)
%
% x_in      : is of size "nxN" where n=number of inputs, N=number of
%             samples
% varargin  : can be empty = [] (currently not used by the code)
% y_out     : should be of size "m1xm2xN" where m1=number of outputs,
%             m2=number of time steps, N=number of samples
% varargout : set varargout{1}=m1 and varargout{2}=m2 
%
%
n = size(x_in, 1);              % number of inputs
N = size(x_in, 2);              % number of samples
t_step = 0;               % array of time steps; set t_step=0 
%                                 if output is not time dependent
m1 = 3;                         % number of outputs
m2 = length(t_step);            % number of time points; m2=1 if output is
%                                 not time dependent
varargout{1} = m1;              % not currently used
varargout{2} = m2;              % not currently used
%
%
p = x_in;                       % uncertain parameters
%
%

y_out = SuperPro(p);