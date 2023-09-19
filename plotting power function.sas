TITLE "Plotting Power Function";
data input;
 a=0.025; /*value of type one error  */;
 n=25;
 s=2;
 input mu;
 datalines;
10
10.5
11
11.5
12
12.5
13
13.5
14
14.5
15
;
data power;
set input;
z=quantile('NORMAL',1-a);
mu_0=10;
/*  find c */;
c=mu_0+z*s/sqrt(n);
/* # ii) find power function */;
x=(sqrt(n)*(mu_0-mu)/s+z);
power_function=1-pdf("NORMAL",x);
proc print data=power;

proc sgplot data=power;
series x=mu y=power_function;













