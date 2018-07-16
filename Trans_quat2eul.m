function eul = Trans_uat2eul(quat)
%{
% fucntion: quaternion -> Euler angle

% params:
> quat: quaternion

% return:
> eul: Euler angle
%}
q = quat / norm(quat);

%%
w = q(1);
x = q(2);
y = q(3);
z = q(4);

%%
qq = -2*(x * z - w * y);
if qq > 1.0
    qq = 1.0;
end

ax = atan2(2 * (x * y+w * z), w ^ 2 + x ^ 2 - y ^ 2 - z ^ 2);
ay = sin(qq);
az = atan2(2 * (y * z + w * x), w ^ 2 - x ^ 2 - y ^ 2 + z ^ 2);
%%
eul = [ax, ay, az];
end