#!/usr/bin/env bash
# Shamelessly copied from Alan: https://git.ecdf.ed.ac.uk/amuoz/thesis

# Script that produces a plot with all commits and the number of words over time
#You require git and python ( + pandas + seaborn )
# If you pass the -p flag it plots instead of printing to terminal

# Notes:
# - Relies on chapters being called "chapter_*.tex", which is only true after
#   2022-11-09 11:20, when I renamed the chapter file names.
# - Counts words directly from the .tex files, so is a crude estimate.
#   Will over-estimate by about 24% (as of 2023-07-12).  Still useful to see
#   trends.  I tried to get it to work with texcount output, but it's too much
#   faff for what it's worth (i.e. a toy).

OPTION=$1

DATAFILE="progress.dat"
rm -f $DATAFILE
for commit in $(git rev-list --all --since=1667992800); do
    dat=$(git log -n 1 --pretty=%ai $commit | cut -f1,2 -d' ')
    nwords=$(git archive $commit "*/chapter_*.tex" | tar -x -O | grep -v "^#" | wc -w)
    if [ "$OPTION" == '-p' ]; then
        echo "${dat},${nwords}" >>$DATAFILE
    else
        echo "${dat},${nwords}"
    fi
done

# Plot data
if [ "$OPTION" == '-p' ]; then
    grep "^202[23].*" $DATAFILE >'tmpfile'
    mv 'tmpfile' $DATAFILE
    pyenv exec python plot.py
    rm -f $DATAFILE
fi
