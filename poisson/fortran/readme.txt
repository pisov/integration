1. Compile

gfortran trapzd.f90 qtrap.f90 poisson.f90 -o poisson.x

or

make

2. Execute

./poisson.x > plot.dat

3. Plot the solution

gnuplot plot.gnu

[Exersize:]

In procedure qtrap try to improve accuracy changing EPS=1.e-4. What is the result? How can we improve the accuracy? 
