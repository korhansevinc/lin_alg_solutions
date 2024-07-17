function [coef] = fitPolynomial_Answer(x, y, d, show_plot)
    [m,~] = size(x);
    
    % Find Coefficient of Polynomial
    A = ones(m,d+1);
    for j=d:-1:1
        A(:,j) = A(:,j+1).*x;
    end
    coef = inv(A'*A)*A'*y;
    
    o = A * coef;

    % Plot
    % NO Need to Change This Part
    if show_plot==1
        figure;
        scatter(x, y, 'filled', 'b');
        hold on;
        plot(x, o, 'Linewidth', 1.5, 'Color', 'r');
        title('Polynomial Fit');
    end
end