function checknumber {
local number=$(ls | wc -l)
if [ $number -eq $1 ]
then
echo "right"
elif [ $number -lt $1 ]
then
echo "high"
else
echo "low"
fi
}

echo "How many files are in this directory? Enter your guess."
read response
correct="0"

while [ $correct -eq "0" ]
do
result=$(checknumber $response)
if [ $result = "right" ]
then
echo "You guessed correctly. Congratulations!"
let correct="1"
else
echo "Sorry, you guessed too $result."
echo "Try again!"
read response
fi
done

