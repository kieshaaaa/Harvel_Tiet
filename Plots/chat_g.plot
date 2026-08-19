load "common.plot"
set datafile separator ","
set key horiz
set key offset 0.13,0

###################################################################################
PlotID="GET"
set size 1.5,0.7
set style fill solid
set bars 1.0
set style data boxplot
set boxwidth .2

set terminal pngcairo size 1200,800 enhanced font "Arial,12"
set output 'Similarity_chat.png'

set ylabel "SimilarityScore"
set xlabel "FileName"
set xlabel offset 0,-3
set xrange [0 : *]
set yrange [0 : *]
set ytics 1
set xtics rotate by 90
set xtics font "Arial,12"
set xtics offset 0,-4
set bmargin 6

imgSep = 0.25
file1 = "data/Augmented_code_Qwen_Chatgpt_Gemini_summary_similarity_numeric_csv.csv"

# Plot 3 columns: Qwen (col 2), Gemini (col 3), ChatGPT (col 4)
plot "< cat ".file1 using ($0 - imgSep):2:xticlabels(1) with boxes fill pattern 13 title "Qwen" ls 21, \
     '' using ($0):3 with boxes fill pattern 12 title "Gemini" ls 23, \
     '' using ($0 + imgSep):4 with boxes fill pattern 11 title "ChatGPT" ls 24

###################################################################################
