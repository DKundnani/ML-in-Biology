function [theta_all,accuracy_all,acc,cost_all]=aml_patient(fold,lambda)
%[file,folder]=uigetfile;
%filename=fullfile(folder,file);
fold=5;
lambda=0.1;
data=readmatrix("normfeature_1.csv");
X=data(:,[1:56]);
y=data(:,57);
[m,n] = size(X);
indices = crossvalind('Kfold',y,fold);
theta_avg=zeros(n+1,1);
cost_avg=zeros(fold,1);
accu_avg=zeros(fold,1);
for i=1:fold
test = (indices == i); train = ~test;

%test = data=readmatrix("normfeature_1.csv")
%y_train
X_train=X(train,:);
X_test=X(test,:);
y_train=y(train,:);
y_test=y(test,:);
[theta,cost]=model(lambda,X_train,y_train);
p=predict(theta,X_test);
cost_avg(i)=cost;
accu_avg(i)=mean(double(p == y_test)) * 100;
if(all(theta_avg,"all"))
    theta_avg=theta_avg+theta;
else
    theta_avg=theta;
end
end
accuracy_all=mean(accu_avg);
theta_all=theta_avg./fold;
cost_all=mean(cost_avg);
p_avg=predict(theta_all,X_test);
acc=mean(double(p_avg == y_test)) * 100;
end