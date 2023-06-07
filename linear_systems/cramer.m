function x = cramer(A, b)
    n = size(A, 1);  % Get the size of matrix A
    
    % Initialize the solution vector
    x = zeros(n, 1);
    
    % Compute the determinant of matrix A
    detA = det(A);
    
    % Solve for each variable using Cramer's rule
    for i = 1:n
        % Create a temporary matrix by replacing column i with the vector b
        tempA = A;
        tempA(:, i) = b;
        
        % Compute the determinant of the temporary matrix
        detTemp = det(tempA);
        
        % Compute the value of the variable
        x(i) = detTemp / detA;
    end
end

%You can use this function by providing your
% coefficient matrix A and constant vector b as input arguments. For example:
% % A = [3 2 -1; 2 -2 4; -1 0.5 -1];
% % b = [1; -2; 0];
% % 
% % x = cramer(A, b);
% % disp(x);
