#!/bin/sh
[ ! -d /for-test ] && mkdir -p /for-test
for i in `seq 10`
do
  touch /for-test/test-${i}.html
done

cd /for-test
for file in `ls *.html`
do
  mv $file `echo $file|sed 's#test#linux#g'|sed 's#html#HTML#g'`
done
