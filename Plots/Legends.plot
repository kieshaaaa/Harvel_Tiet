load "common.plot"
set key horiz
offset=.13
set terminal postscript eps enhanced dashed "Helvetica-Bold" fontfile "../fonts/Helvetica-Bold.pfb" 25 color
###################################################################################
PlotID="LEGEND1"
#set origin 0,0
set size 1.1,0.2
set style fill solid
set bars 1.0
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth .2

outFile='legends.eps'
set output outFile
set key auto
unset ylabel
unset xlabel
unset xtics
unset ytics
unset border
unset tics
set xrange [0 : 1]
set yrange [0 : *]
imgSep=0.25
file1="data/dummy.tsv"

plot "< cat ". file1 using 1:2:2:2:2 with candlesticks fill pattern 13 title "No logging" ls 21 whiskerbars,\
	'' using 1:2:2:2:2 with candlesticks fill pattern 1 title "XLP" ls 24 whiskerbars, \
	'' using 1:2:2:2:2 with candlesticks fill pattern 12 title "Tracee" ls 22 whiskerbars;

#plot "< cat ". file1  every ::0::3 using ($1-imgSep):3:2:6:5 with candlesticks fill pattern 13 title "No logging" ls 21 whiskerbars, \
#	''  every ::4::7 using ($1-4):3:2:6:5 with candlesticks fill pattern 1 title "XLP" ls 24 whiskerbars, \
#	'' every ::8::11  using ($1+imgSep-8):3:2:6:5 with candlesticks fill pattern 12 title "Tracee" ls 22 whiskerbars;

xOffset=.1*(GPVAL_DATA_X_MAX-GPVAL_DATA_X_MIN)
yOffset=.05*(GPVAL_DATA_Y_MAX-GPVAL_DATA_Y_MIN)
set xrange [GPVAL_DATA_X_MIN-xOffset:GPVAL_DATA_X_MAX+xOffset]
set yrange [GPVAL_DATA_Y_MIN-yOffset:GPVAL_DATA_Y_MAX+yOffset]
set output outFile
replot;

print "To add Legend use the following latex command:\n \\includegraphics[width=\\columnwidth,trim=0 1.2cm 0 0, clip] \{",outFile, "\}"
###################################################################################