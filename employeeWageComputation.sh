

isPartTimePresent=2
isFullTimePresent=1
isAbsent=0
wagePerHour=20
workingHr=0
empCheck=$((RANDOM%3))
if [ $empCheck -eq $isFullTimePresent ]
then
	echo "Employee present"
	workingHr=8
elif [ $empCheck -eq $isPartTimePresent ]
then
	echo "Employee present for Part time"
	workingHr=4
else
	echo "Employee absent"
	workingHr=0
fi
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"
