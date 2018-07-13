function y_new = RK4(f, t, y, A, h)
%{
% function: 4th order Runge-Kutta method
> system function: dy/dt = f(t, y, A)
> y(n+1) = y(n) + h/6*(k1 + 2*k2 + 2*k3 + k4)

% params: f, t, y, h
> f: the function using RK4 integrator
> t: time
> y: y(n)
> A: extra parameters for f.
> h: step

% return: y_new
> y_new: y(n+1)
%}
%% RK 1
ha = 0;
k1 = f(t, y, A);

%% RK 2
ha = 0.5 * h;
k2 = f(t + ha, y + ha * k1, A);

%% RK 3
ha = 0.5 * h;
k3 = f(t + ha, y + ha * k2, A);

%% RK 2
ha = h;
k4 = f(t + ha, y + ha * k3, A);

%% calculate the result
y_new = y + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4);

end