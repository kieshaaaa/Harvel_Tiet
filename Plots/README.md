# Use gnuplot to create the plots

## Install dependencies
`sudo apt install gnuplot groff`

## File/Folder structure
```
├── data       (Store plot data files)
├── common.plot (Fonts, Color Schemes, Styles, etc.)
├── Makefile   (Use make to generate the plots)
├── SimilarityComparison.plot  (Sample plot)
├── Legends.plot    (Sample Legends only plot)
```
## Build / Generate plot
`make`
## Latex for Legends only plot along with two common plots
```
\section{Test Figure With Legends}
%%%%%%%%%%%%%%%%%%%%
\begin{figure}[!ht]
     \centering
     \includegraphics[width=\columnwidth,trim=0 1.2cm 0 0, clip]{GraphSample/legends.eps}
     \begin{minipage}{0.48\columnwidth}
 		\centering
 		 \includegraphics[width=\textwidth,height=2cm]{GraphSample/get.eps}
  		\caption{Execution times for the GET API}
		\label{fig:get_exec_times}
 	\end{minipage}
  \hfill 
  	\begin{minipage}{0.48\columnwidth}
   		\centering
  		\includegraphics[width=\textwidth]{GraphSample/post.eps}
  		\caption{Execution times for the POST API}
  		\label{fig:post_exec_times}
 	\end{minipage}
\end{figure}
```
