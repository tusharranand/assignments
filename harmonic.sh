# prints the nth harmonic number

h=0
for i in $( seq 1 $1 );
do
        x=`echo $i | awk '{print 1/$i}'`
        h=`echo $h $x | awk '{print ($1 + $2)}'`
done
echo $h
