#! /bin/bash
# This is meant to loop over and produce a .pdf for each of the colors in AwesomeCV
Colors="emerald skyblue red pink orange nephritis concrete darknight"
DIR="output"

for d in $Colors; do
    sed -i 's/\\colorlet{awesome}{awesome-[a-z]*}/\\colorlet{awesome}{awesome-'"$d"'}/g' resume.tex
    xelatex -jobname resume-$d -output-directory=$DIR  -interaction nonstopmode resume.tex
done

rm ./$DIR/*.log ./$DIR/*.aux ./$DIR/*.out
