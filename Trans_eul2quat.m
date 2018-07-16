function quat = Trans_eul2quat(eul)
%{
% fucntion: Euler angle -> quaternion

% params:
> eul: Euler angle

% return:
> quat: quaternion
%}

%%
c = cos(eul / 2);
s = sin(eul / 2);

%% Euler angle -> quaternion
w = c(1) * c(2) * c(3) + s(1) * s(2) * s(3);
x = c(1) * c(2) * s(3) - s(1) * s(2) * c(3);
y = c(1) * s(2) * c(3) + s(1) * c(2) * s(3);
z = s(1) * c(2) * c(3) - c(1) * s(2) * s(3);

%%
quat = [w, x, y, z];

end