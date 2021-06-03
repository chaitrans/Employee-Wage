echo "Welcome to Employee Wage Computation Program"
declare -a dailySalary
isPartTimePresent=2
isFullTimePresent=1
isAbsent=0
monthSalary=0
wagePerHour=20
workingHr=0
counter=0
#assume 20 working days in a month
for (( i=0; i<20; i++ ))
do
	empCheck=$((RANDOM%3))
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
	dailySalary[((counter++))]=$((workingHr*wagePerHour))
done
echo "Daily Salary : ${dailySalary[@]}"

for (( i=0; i<20; i++ ))
do
	sal=${dailySalary[i]}
	monthSalary=$((monthSalary+sal))
done
echo "Monthly employee wage : $monthSalary"
