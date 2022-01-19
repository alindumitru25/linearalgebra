% is pseudoinverse the same as the "real" inverse or an invertible matrix?

% generate a full rank matrix.
m = 6;
A = rand(m, m);

invA = inv(A);
pseudoInvA = pinv(A);

% they seem to be the same.
disp(invA - pseudoInvA);
