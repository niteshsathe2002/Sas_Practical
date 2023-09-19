title1 "Sampling Distribution of Statisitcs/Estimator";
data sample;
mu=10;
n=50;
do i=1 to n;
x=rand("NORMAL",mu,1);
output;
end;
proc means data=sample mean var;
var x;
run;

data sample;
lamda=10;
n=50;
do i=1 to n;
x=rand("POISSON",lamda);
output;
end;
proc means data=sample mean var max;
output out=mean mean=;
var x;

data sample;
n=50;
do i=1 to n;
x=rand("UNIFORM",0,10);
output;
end;
proc means data=sample mean var max;
output out=mean mean=;
var x;

DATA mean_2;
set mean;
mean_2=2*x;
proc print data=mean_2;
var mean_2;


