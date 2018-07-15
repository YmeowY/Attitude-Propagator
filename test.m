
%%
w1 = atts(:, 5:7);
w2 = w(1:1000, :);
dw = w1 - w2;

%%
for i = 1:length(eul)
    while eul(i, 3) >= pi
        eul(i, 3) = eul(i, 3) - 2 * pi;
    end
end
dAng = angles - eul(1:1000, :);