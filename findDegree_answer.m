function [d] = findDegree_answer(x, y)
    [m,~] = size(x);
    [x_train, y_train, x_test, y_test] = divideDataset_Answer(x, y, 30);
    
    MSE_best = 1000000000;
    for d=1:m
        coef = fitPolynomial_Answer(x_train, y_train, d, 0);
        MSE = calculateMSE_Answer(x_test, y_test, coef);
        disp(MSE);
        if MSE < MSE_best
            MSE_best = MSE;
        else
            d = d - 1;
            break
        end
    end
end