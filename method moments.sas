title "Method of Moments";
data sample;
n=10;
p=0.86;
k=100;
do i=1 to k;
x=rand("BINOMIAL",p,n);
output;
end;
proc means data=sample mean var max;
var x;
output out=mean mean=xbar;
data p_hat;
n=10;
set mean;
est_phat=xbar/n;
proc print data=p_hat;
var est_phat;

title "Method of Moments";
data sample;
a=7;
b=4;
n=100;
do i=1 to n;
x=rand("GAMMA",a,b);
output;
end;
proc means data=sample mean var max;
var x;
output out=moments mean=xbar var=sample_var;
data est_gamma;
set moments;
est_alpha=xbar**2/sample_var;
est_beta=sample_var/xbar;
proc print data=est_gamma;
var est_alpha est_beta;




