% clearvars;
% close all;
%%
att = [1, 0, 0, 0, 0.1, 0.2, 0.3];
%%
Is = [20, -10, 0;...
    -10, 30, 0;...
    0, 0, 40];
Is_1 = inv(Is);

%%
h = 1;
len = 1000;
%% apply 
A.Is = Is;
A.Is_1 = Is_1;

%% before propagation
atts = [];
f = @Prop_Attitude;
%%
for i = [1:h:1000]
    atts = [atts; att];
    
    % torque % delta momentum
    T = [0, 0, 0];
    hw = [0, 0, 0];
    A.T = T;
    A.hw = hw;
    
    % propagate
    att = RK4(f, i, att, A, h);
end

