function [x_train, y_train, x_test, y_test] = divideDataset_Answer(x, y, test_percent)
    [m,~] = size(x);
    k = int16(m*test_percent/100);
    
    i = randperm(m, k);
    x_train = x(i);
    y_train = y(i);

    x(i) = [];
    y(i) = [];
    x_test = x;
    y_test = y;
end