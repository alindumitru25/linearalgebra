% decompose w to 2 vectors having v as a reference.

% vector w, to be decomposed.
w = [ 2 3 ]';

% vector v, the reference.
v = [ 4 0 ]';

% compute w-parallel-to-v.
wParallel = ((w' * v) / (v' * v)) * v;

% compute w-orthogonal-to-v.
wOrth = w - wParallel;

% confirm results algebraically (sum to w, orthogonal components).
disp('Original vector: ');
disp(w);
disp('Vector from decomposition: ');
disp(wParallel + wOrth);
disp('Dot is: ');
disp(dot(wParallel, wOrth));

% plot all four vectors.
figure(1), clf
hold on
plot([0 w(1)], [0 w(2)], 'Color', 'b');
plot([0 v(1)], [0 v(2)], 'Color', 'g');
plot([0 wParallel(1)], [0 wParallel(2)], 'r--');
plot([0 wOrth(1)], [0 wOrth(2)], 'r:');

legend({'w'; 'v'; 'w_{||v}'; 'w_{\perp v}'});
axis([-.3 1 -.3 1]*5);
axis square
grid on
