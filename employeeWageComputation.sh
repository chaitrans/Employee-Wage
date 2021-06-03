
echo "Welcome to Employee Wage Computation Program"
present=1
absent=0
wagePerHour=20
workingHr=0
empCheck=$((RANDOM%2))
if [ $empCheck -eq $present ]
then
	echo "Employee present"
	workingHr=8
else
	echo "Employee absent"
	workingHr=0
fi
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"


