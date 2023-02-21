*How to export graph from Stata to Latex
*Lorenzo Pedretti
*rev: 21 february 2023

//You need to save graph in memory using the name option

clear all
global output "C:\Users\pedre\OneDrive - Università Commerciale Luigi Bocconi\Desktop\output\tex"

//TO START A NEW FILE
cap	file close output_tex
	local output_tex "$output"
	cap mkdir "`output_tex'/images"
	local images_tex "`output_tex'/images"
	file open output_tex using "`output_tex'/main.tex", write replace
	file write output_tex "\documentclass{article}" _n
	file write output_tex "\usepackage{graphicx}" _n
	file write output_tex "\usepackage{pdfpages}" _n
	file write output_tex "\title{Export To Tex}" _n
	file write output_tex "\author{Lorenzo Pedretti}" _n
	file write output_tex "\date{\today}" _n
	file write output_tex "\begin{document}" _n
	file write output_tex "\maketitle" _n

//TO EXPORT A GRAPH
gr dir, m
local graph_list=r(list)
foreach g of local graph_list{
graph export "`images_tex'/`g'.pdf", replace name(`g')
file write output_tex "\begin{figure}" _n
file write output_tex "\centering" _n
file write output_tex "\includegraphics[width=0.90\textwidth]{images/`g'.pdf}" _n
file write output_tex "\caption{Caption}" _n
file write output_tex "\label{fig:`g'}" _n
file write output_tex "\end{figure}" _n
}

//TO EXPORT	
	file write output_tex "\end{document}" _n
	file close output_tex
