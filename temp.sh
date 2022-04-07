#! /bin/bash

history="2022_Place_Canvas_History"
# history="test_history"
lines=$(cat $history)
cd data
for line in $lines
do
    # echo $line
    file=$(basename $line)
    # echo $file
    wget $line
    gunzip -S .gzip $file &

done

# wget https://placedata.reddit.com/data/canvas-history/2022_place_canvas_history-000000000000.csv.gzip
# gunzip -k -S .gzip 2022_place_canvas_history-000000000000.csv.gzip



