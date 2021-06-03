echo "Welcome to Employee Wage Computation Program"
isPartTimePresent=2
isFullTimePresent=1
isAbsent=0
wagePerHour=20
workingHr=0
empCheck=$((RANDOM%3))
case $empCheck in
	$isFullTimePresent)
		echo "Employee present for Full time"
		workingHr=8
		;;
	$isPartTimePresent)
		echo "Employee present for Part time"
		workingHr=4
		;;
	*)
		echo "Employee Absent"
		workingHr=0
		;;
esac
salary=$((wagePerHour*workingHr))
echo "Daily employee wage : $salary"
