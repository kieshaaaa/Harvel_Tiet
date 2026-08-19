load "common.plot"
set datafile separator ","
set key horiz
set key offset 0,0

#######################################################################
PlotID="GET"
set size 1.0,0.5
set style fill solid
set bars 1.0
set style data boxes
set boxwidth 0.2

# ---------- EPS OUTPUT ----------
set terminal postscript eps enhanced color font "Times-Roman,10"
set output 'Similarity_QGC_percentage.eps'

set ylabel "SimilarityScore per"
set xlabel "FileName"
set xlabel offset 0,-3
set xrange [-0.5:*]
set yrange [0:*]
set ytics 1
set xtics rotate by 90
set xtics font "Arial,9"
set xtics offset 0,-4
set bmargin 8
set xtics scale 0
set xtics nomirror
set format x ""

set style fill solid border -1

imgSep = 0.25
file1 = "data/Augmented_code_Qwen_Chatgpt_Gemini_summary_similarity_numeric_csv_converted.csv"

plot "< cat ".file1 using ($0 - imgSep):7:xticlabels(1) with boxes fill pattern 13 title "Qwen" ls 21, \
     '' using ($0):8 with boxes fill pattern 12 title "Gemini" ls 23, \
     '' using ($0 + imgSep):9 with boxes fill pattern 11 title "ChatGPT" ls 24

unset output

# ---------- PDF OUTPUT ----------
set terminal pdfcairo enhanced color font "Arial,10" size 14in,4in
set output 'Similarity_All30_per.pdf'
replot
unset output
###################################################################################
