for ((i = 1; i <= 100; i++))
do
  # Check if the number is odd
  if ((i % 2 != 0))
  then
    echo "The odd numbers are: $i"
  fi
done