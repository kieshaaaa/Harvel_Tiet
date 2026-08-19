load "common.plot"
set key horiz
set key offset 0.13,0
###################################################################################
PlotID="GET"
set size 1.5,0.7
set style fill solid
set bars 1.0
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth .2

outFile='Similarity_.eps'
set output outFile
set ylabel "Similarity Score"
set xlabel "File Name"
set xlabel offset 0,-3
set xrange [0 : *]
set yrange [0 : *]
set ytics 10
set xtics rotate by 90
set xtics font "Helvetica-Bold,12"
set xtics offset 0,-4
set bmargin 6

imgSep = 0.25
file1 = "data/Augmented_code_Qwen_Chatgpt_Gemini_summary_similarity_purpose_analysis.tsv"

# Use columns for SimilarityChecker_Qwen (7), SimilarityChecker_Gemini (8), SimilarityChecker_Chatgpt (9)
plot "< cat ".file1 using ($0-imgSep):7:xticlabels(1) with boxes fill pattern 13 title "Qwen" ls 21, \
     '' using ($0):8 with boxes fill pattern 11 title "Gemini" ls 23, \
     '' using ($0+imgSep):9 with boxes fill pattern 12 title "ChatGPT" ls 24

xOffset = .1*(GPVAL_DATA_X_MAX-GPVAL_DATA_X_MIN)
yOffset = .05*(GPVAL_DATA_Y_MAX-GPVAL_DATA_Y_MIN)
set xrange [GPVAL_DATA_X_MIN-xOffset:GPVAL_DATA_X_MAX+xOffset]
set yrange [GPVAL_DATA_Y_MIN-yOffset:GPVAL_DATA_Y_MAX+yOffset]
set output outFile
replot
###################################################################################
