# Bash

gcd() {
    if (( $2 > 0 ))
    then
        echo $( gcd $2 $(( $1 % $2 )) )
    else
        echo $1
    fi
}

echo test

declare -i N=1000
declare -a A
for ((i=0;i<N;i++))
do
    A[i]=$i
done

declare -i ans=0
for i in "${A[@]}"
do
    for j in "${A[@]}"
    do
        ans=$(( $(gcd $i $j) + ans ))
    done
done
echo $ans
