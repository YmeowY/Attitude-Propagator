function eul = Trans_quat2eul(quat)
%{
% fucntion: quaternion -> Euler angle

% params:
> quat: quaternion

% return:
> eul: Euler angle
%}

%%
w = quat(1);
x = quat(2);
y = quat(3);
z = quat(4);

%%
ax = atan2(2 * (y * w - x * z), 1 - 2 * (y * y - z *z));
ay = asin(2 * x * y + 2 * z * w);
az = atan2(2 * (x * w - y * z), 1 - 2 * (x * x - z * z));

%%
eul = [ax, ay, az];
end