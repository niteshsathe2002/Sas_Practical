title "Plotting Liklihood Function";
data sample;
lamda=5;
n=50;
do i=1 to n;
x=rand("POISSON",lamda);
output;
end;

data random;
do i=1 to 500;
l_=3+(7-3)*rand("UNIFORM");
output;
end;

data maxlik;
set sample ;
set random;
like_pois=(exp(-n*l_))*(l_**(sum(x)));
proc sgplot data=maxlik ;
 scatter x=l_ y=like_pois;

 
data sample1;
theta=2;
n=10;
do i=1 to n;
x=rand("EXPONENTIAL",theta);
output;
end;

data random1;
do i=1 to 500;
theta_=0.4+(3-0.4)*rand("UNIFORM");
output;
end;

data maxlik1;
set sample1 ;
set random1;
like_exp=((1/theta_)**n)*(exp(-sum(x)/theta_));
 proc print data=maxlik;
 
proc sgplot data=maxlik1 ;
scatter x=theta_ y=like_exp;
 
 
 
 
 


