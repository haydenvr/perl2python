#!/bin/bash

for file in examples/$1/*.pl
do
	echo "testing $file now"
	./perl2python $file > tmp_ans
	cat tmp_ans
	echo "comparing $file with the answer"
	answer=`echo $file | sed s/\.pl$/\.py/`	
	if [ ! -f $answer ]; then
		    echo "$answer doesn't exist"
	else
		diff -wB tmp_ans $answer 
		echo "Success! test complete for $file"
		echo ""
	fi
done 	

