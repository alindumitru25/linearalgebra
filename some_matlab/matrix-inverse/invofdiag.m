% diagonal matrices, and their inverses

% create some diagonal matrices, start with a 2x2 integers, work up to
% larger matrices.

% compute their inverses (condition on the diagonal matrix for invertibility).
% think.
D = diag(rand(4, 1))

for i=2:6
    A = diag(rand(i, 1));
    hasInv = true;
    for j=1:i
        if (A(j, j) == 0)
            hasInv = false;
            break;
        end
    end

    if (hasInv)
        A
        inv(A)
    end
end
