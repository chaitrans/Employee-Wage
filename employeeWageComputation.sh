echo "Welcome to Employee Wage Computation Program"
declare -a dailyWage
isPartTimePresent=2
isFullTimePresent=1
isAbsent=0
wagePerHour=20
workingDays=20
maxHrsInMonth=100
monthSalary=0
totalWorkingHr=0

function getWorkingHours() {
	case $empCheck in
		$isFullTimePresent)
			workingHr=8
			;;
		$isPartTimePresent)
			workingHr=4
			;;
		*)
			workingHr=0
			;;
	esac
	echo $workingHr
}

for (( i=0; i<$workingDays && $totalWorkingHr<$maxHrsInMonth; i++ ))
do
	empCheck=$((RANDOM%3))
	workingHr="$( getWorkingHours $empCheck )"
	dailyWage[i]=$((workingHr*wagePerHour))
	totalWorkingHr=$((totalWorkingHr+workingHr))
done
echo "Employee Daily wage : ${dailyWage[@]}"
monthSalary=$((wagePerHour*totalWorkingHr))
echo "Employee monthly wage : $monthSalary"
