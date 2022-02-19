# Extend the Flip Coin problem till either Heads or Tails wins 11 times

echo "Flipping the coin."

echo ""

score_h=0
score_t=0

while [ $score_h -lt 11 ] && [ $score_t -lt 11 ];
do

        flip=$((RANDOM%2))

        if [ $flip -eq 0 ];
        then
                score_h=$(($score_h + 1))
                echo "Heads."
        else
                score_t=$(($score_t + 1))
                echo "Tails."
        fi

        echo "Heads = " $score_h
        echo "Tails = " $score_t
        echo ""
done
