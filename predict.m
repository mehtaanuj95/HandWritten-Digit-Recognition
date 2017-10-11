function p = predict(Theta1, Theta2, X)

m = size(X, 1);
num_labels = size(Theta2, 1);

t1 = [ones(m, 1) X];

z2 = t1 * Theta1';
t2 = sigmoid(z2);
t2 = [ones(size(t2,1), 1) t2];

z3 = t2 * Theta2';
t3 = sigmoid(z3);

[val, index] = max( t3,[],2);    % To obtain the max for each row
p = index;

end
