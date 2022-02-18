# Takes a command-line argument n and prints a table of the powers of 2
# that are less than or equal to 2^n.

for i in $( seq 1 $1 );
do
        echo $((2**$i))
done
