set style line 1 lt 1 lw 6 ps 2
set style line 2 lt 0 lw 10 ps 2
set style line 3 lt 3 lw 3 ps 2
set style line 4 lt 1 lw 3 ps 2
set style line 5 lt 0 lw 5 ps 2
set style increment user
set datafile missing "NaN"
set terminal postscript eps enhanced
set grid

set yrange [0:60000]
set xrange [0:1000]
set output "atl_compared_general_100attributes.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'atl_compared_general_100attributes.dat' using 1:2 with lines smooth sbezier title 'ATL',\
'atl_compared_general_100attributes.dat' using 1:3 with lines smooth sbezier title 'ATL_a',\
'atl_compared_general_100attributes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'atl_compared_general_100attributes.dat' using 1:5 with lines smooth sbezier title 'ATL_c',\
'atl_compared_general_100attributes.dat' using 1:6 with lines smooth sbezier title 'ATL_d'

set output "atl_compared_general_100classes.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'atl_compared_general_100classes.dat' using 1:2 with lines smooth sbezier title 'ATL',\
'atl_compared_general_100classes.dat' using 1:3 with lines smooth sbezier title 'ATL_a',\
'atl_compared_general_100classes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'atl_compared_general_100classes.dat' using 1:5 with lines smooth sbezier title 'ATL_c',\
'atl_compared_general_100classes.dat' using 1:6 with lines smooth sbezier title 'ATL_d'

set output "atl_compared_worst_100attributes.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'atl_compared_worst_100attributes.dat' using 1:2 with lines smooth sbezier title 'ATL',\
'atl_compared_worst_100attributes.dat' using 1:3 with lines smooth sbezier title 'ATL_a',\
'atl_compared_worst_100attributes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'atl_compared_worst_100attributes.dat' using 1:5 with lines smooth sbezier title 'ATL_c',\
'atl_compared_worst_100attributes.dat' using 1:6 with lines smooth sbezier title 'ATL_d'

set output "atl_compared_worst_100classes.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'atl_compared_worst_100classes.dat' using 1:2 with lines smooth sbezier title 'ATL',\
'atl_compared_worst_100classes.dat' using 1:3 with lines smooth sbezier title 'ATL_a',\
'atl_compared_worst_100classes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'atl_compared_worst_100classes.dat' using 1:5 with lines smooth sbezier title 'ATL_c',\
'atl_compared_worst_100classes.dat' using 1:6 with lines smooth sbezier title 'ATL_d'

set yrange [0:10000]
set xrange [0:1000]
set output "mistral_compared_general_100attributes.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'mistral_compared_general_100attributes.dat' using 1:2 with lines smooth sbezier title 'Mistral',\
'mistral_compared_general_100attributes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set output "mistral_compared_general_100classes.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'mistral_compared_general_100classes.dat' using 1:2 with lines smooth sbezier title 'Mistral',\
'mistral_compared_general_100classes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'


set output "mistral_compared_worst_100attributes.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'mistral_compared_worst_100attributes.dat' using 1:2 with lines smooth sbezier title 'Mistral',\
'mistral_compared_worst_100attributes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set output "mistral_compared_worst_100classes.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'mistral_compared_worst_100classes.dat' using 1:2 with lines smooth sbezier title 'Mistral',\
'mistral_compared_worst_100classes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'


set output "100classes_compared_general.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'atl_compared_general_100classes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'qvto_100classes.dat' using 1:2 with lines smooth sbezier title 'QVTo',\
'java_100classes.dat' using 1:2 with lines smooth sbezier title 'Java',\
'sitra_100classes.dat' using 1:2 with lines smooth sbezier title 'SiTra',\
'mistral_compared_general_100classes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set output "100attributes_compared_general.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'atl_compared_general_100attributes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'qvto_100attributes.dat' using 1:2 with lines smooth sbezier title 'QVTo',\
'java_100attributes.dat' using 1:2 with lines smooth sbezier title 'Java',\
'sitra_100attributes.dat' using 1:2 with lines smooth sbezier title 'SiTra',\
'mistral_compared_general_100attributes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set output "100attributes_compared_worst.eps"
set xlabel "classes"
set ylabel "time (ms)"
plot 'atl_compared_worst_100attributes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'qvto_100attributes.dat' using 1:3 with lines smooth sbezier title 'QVTo',\
'java_100attributes.dat' using 1:3 with lines smooth sbezier title 'Java',\
'sitra_100attributes.dat' using 1:3 with lines smooth sbezier title 'SiTra',\
'mistral_compared_worst_100attributes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set output "100classes_compared_worst.eps"
set xlabel "attributes"
set ylabel "time (ms)"
plot 'atl_compared_worst_100classes.dat' using 1:4 with lines smooth sbezier title 'ATL_b',\
'qvto_100classes.dat' using 1:3 with lines smooth sbezier title 'QVTo',\
'java_100classes.dat' using 1:3 with lines smooth sbezier title 'Java',\
'sitra_100classes.dat' using 1:3 with lines smooth sbezier title 'SiTra',\
'mistral_compared_worst_100classes.dat' using 1:3 with lines smooth sbezier title 'Mistral_a'

set yrange [0:400]
set xrange [0:1000]
set output "rss2atom.eps"
set xlabel "items"
set ylabel "time (ms)"
plot 'rss2atom.dat' using 1:2 with lines smooth sbezier title 'ATL',\
'rss2atom.dat' using 1:3 with lines smooth sbezier title 'QVTo',\
'rss2atom.dat' using 1:4 with lines smooth sbezier title 'Java',\
'rss2atom.dat' using 1:5 with lines smooth sbezier title 'SiTra',\
'rss2atom.dat' using 1:6 with lines smooth sbezier title 'Mistral'

