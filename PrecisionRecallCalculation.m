[prec, recall] PrecisionRecallCalculation = function(predicted, y, num_classes)
% predicted - Predicted values
% y - Actual values
% num_classes = 10;

ConfMatrix = zeros(num_classes,num_classes)
for i=1:num_classes
	for j=1:num_classes
		ConfMatrix(i,j) = sum((predicted==i) & (y==j));
	end;
end;

precision=0;
for i=1:num_classes
	precision(i) = ConfMatrix(i,i)/sum(ConfMatrix(i,:));
end

recall=0;
for i=1:num_classes
	recall(i) = ConfMatrix(i,i)/(sum(y == i));
end

fscore=0;
for i=1:num_classes
	fscore(i) = 2 * ((precision(i) * recall(i))/(precision(i) + recall(i)));
end;

fid=fopen('LR_pred.txt','w')
fdisp(fid,predicted)
fclose(fid)

fid=fopen('LR_y.txt','w')
fdisp(fid,y)
fclose(fid)


