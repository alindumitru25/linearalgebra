lambdaIter = 30;
lambda = linspace(0, 0.1, lambdaIter);
N = 20;
% repeat 1000 times with same lambda. Take the avg abs(det).
innerIter = 1000;
avgDeterminants = zeros(30, 1);

for i=1:lambdaIter
    determinants = zeros(innerIter, 1);
    for j=1:innerIter
        % generate a square random matrix (20x20).
        A = rand(N);

        % impose a linear dependence.
        A(:, 1) = A(:, 2);

        % "shift" the matrix (0->.1 times the identity matrix) (lambda).
        A = A + eye(N) * lambda(i);

        % compute the abs(determinant) of the shifted matrix.
        determinants(j) = abs(det(A));
    end

    % take avg.
    avgDeterminants(i) = mean(determinants);
end

% plot of det as a function of lambda.
figure(1), clf
plot(lambda, avgDeterminants, 's-');
xlabel('Fraction of identity matrix for shifting');
ylabel('determinant');
