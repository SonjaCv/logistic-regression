# logistic-regression

Implementation of a multiclass classification system in Octave with logistic regression.

The dataset examples have ten possible class labels. The class labels are marked with numbers from one to ten. For each class label we initialize theta paramether to zeros and run the fminunc function. fminunc is built in function in Octave that makes optimization of paramethers in order to minimize the cost function. It takes as input paramether the function name where the cost and gradients are calculated. I have implemented the cost and gradients calculation in the file costFunction. Other paramethers that fminunc takes are the initial theta and settings for maximum number of iterations.

Because we have 10 classes theta will be matrix of paramethers for each class.

After we have learned paramethers theta we can predict the class label for unlabeled data.
