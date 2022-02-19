# Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.

flip=$((RANDOM%2))

if [ $flip -eq 0 ]
then
	echo "Heads."
else
	echo "Tails."
fi
