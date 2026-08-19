load "common.plot"
set key horiz
offset=.13
###################################################################################
PlotID="GET"
#set origin 0,0
set size 1.5,0.7
set style fill solid
set bars 1.0
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth .2

outFile='Similarity.eps'
set output outFile
#set title ""
set ylabel "SimilarityScore"
set xlabel "FileName"
set xlabel offset 0,-3
set xrange [0 : *]
set yrange [0 : *]
set ytics 1
set xtics rotate by 90
set xtics font "Helvetica-Bold,12"
set xtics offset 0,-4
set bmargin 6
imgSep=0.25
file1="data/Augmented_code_Qwen_Chatgpt_Gemini_summary_similarity_purpose_analysis.tsv"
file2=" "

plot "< cat ". file1 using ($1-imgSep):3 with boxes fill pattern 13 title "Qwen" ls 21,\
		'' using ($1):4:xticlabels(2) with boxes fill pattern 11 title "ChatGPT" ls 24,\
		'' using ($1+imgSep):5 with boxes fill pattern 12 title "Gemini" ls 23;


#;
	#''  every ::0::1 using ($1):3:3:3:3 with candlesticks fill pattern 1 title "ChatGPT" ls 24 whiskerbars, \
	#''	every ::0::1 using ($1+imgSep):4:4:4:4 with candlesticks fill pattern 14 title "Gemini" ls 26 whiskerbars;

xOffset=.1*(GPVAL_DATA_X_MAX-GPVAL_DATA_X_MIN)
yOffset=.05*(GPVAL_DATA_Y_MAX-GPVAL_DATA_Y_MIN)
set xrange [GPVAL_DATA_X_MIN-xOffset:GPVAL_DATA_X_MAX+xOffset]
set yrange [GPVAL_DATA_Y_MIN-yOffset:GPVAL_DATA_Y_MAX+yOffset]
set output outFile
replot;
###################################################################################
