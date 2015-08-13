#!/bin/sh
TMPFILE=/tmp/rmttsvr-$$
listoffiles=`grep -rl "\/ttsvr" . `

for i in `echo $listoffiles`
do
  sed 's/ttsvr\///g'  $i  > $TMPFILE
        cp $TMPFILE $i
done

rm $TMPFILE
exit 0
