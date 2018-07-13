function [dAtt] = Prop_Attitude(t, Att, A)
%{
% fucntion: perform attitude propagation. <Spacecraft Dynamics and
Control>P107

% params:
> t: time
> att: attitude in inertial frame [quaternion, angle velocity].
> A: extra parameters(struct)
> > torque
> > inertia matrix satallite
> > momentum of wheels and others

% return:
> dAtt: differentiate of attitude.
%}
%% extract the parameter from A & Att
% momentum of reaction wheels
hw = A.hw;
% inertia matrix and its inverse matrix of satellite
Is = A.Is;
Is_1 = A.Is_1;
% torque
T = A.T;
% quaternion & angle velocity
q = Att(1:4);
w = Att(5:7);
W = [0, w(3), -w(2), w(1);...
    -w(3), 0, w(1), w(2);...
    w(2), -w(1), 0, w(3);...
    -w(1), -w(2), -w(3), 0];

%% calculate momentum of satellite & reaction wheels
hs = Is * w';
h = hs' + hw;

%% calculate dquaternion
dq = 0.5 * W  * (q');
dq = dq';

%% calculate dh & dw
dh = T - cross(w, h);
dw = Is_1 * dh';
dw = dw';

%% assemble the result
dAtt = [dq, dw];

end

