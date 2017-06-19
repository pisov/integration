set xrange [0:1]
set xlabel "x"
set ylabel "u(x)"

plot x*(1-x)*exp(x) w l lw 1.5 title "Exact"
replot "plot.dat" u 1:2 w p pt 7 title "Solution"

pause -1
