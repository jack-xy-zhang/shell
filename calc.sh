#!/bin/bash
echo "This is a smaple to do the calculation in shell"
((a=1+2**3-4%3))
echo "The value of a in ((a=1+2**3-4%3)) is: $a"
echo "Now use the varibles"
i=2
let i=i+8
echo $i
echo "Now use the expr"
expr 2 + 2
expr 3 \* 3
expr 1+1
echo "Now we use the bc, bc is a calculator"
echo 1+1 | bc
echo 2^10 | bc
echo "==END==="
