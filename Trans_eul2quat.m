function quat = Trans_eul2quat(eul)
%{
% fucntion: Euler angle -> quaternion

% params:
> eul: Euler angle

% return:
> quat: quaternion
%}

%%
c1 = cos(eul(1) / 2);
c2 = cos(eul(2) / 2);
c3 = cos(eul(3) / 2);
s1 = sin(eul(1) / 2);
s2 = sin(eul(2) / 2);
s3 = sin(eul(3) / 2);

%% Euler angle -> quaternion
w = c1 * c2 * c3 - s1 * s2 * s3;
x = s1 * s2 * c3 + c1 * c2 * s3;
y = s1 * c2 * c3 + c1 * s2 * s3;
z = c1 * s2 * s3 - s1 * c2 * s3;

%%
quat = [w, x, y, z];

end