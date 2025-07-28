nohup time ./generate-dataset.sh data_1k.txt 1000 > data_1k.log 2>&1 &

nohup time ./generate-dataset.sh data_100k.txt 100000 > data_100k.log 2>&1 &

nohup time ./generate-dataset.sh data_10M.txt 10000000 > data_10M.log 2>&1 &

nohup time ./sort-data.sh data_1k.txt > sorted_1k.txt 2> sorted_1k.log &

nohup time ./sort-data.sh data_100k.txt > sorted_100k.txt 2> sorted_100k.log &

nohup time ./sort-data.sh data_10M.txt > sorted_10M.txt 2> sorted_10M.log &
