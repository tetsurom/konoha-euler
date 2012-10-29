/*
http://projecteuler.net/problem=19


You are given the following information, but you may prefer to do some research for yourself.
1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

*/
import("konoha");

boolean isLeapYear(int year){
	return year % 4 == 0 && (year % 1000 != 0 || year % 400 == 0)
}

int getDaysOfMonth(int month, int year){
	if(month == 4 || month == 6 || month == 9 || month == 11){
		return 30;
	}
	if(month == 2){
		if(isLeapYear(year)){
			return 29;
		}
		return 28;
	}
	return 31;
}

void main() {
	int answer = 0;
	int y = 1901;
	int m = 1;
	int weekday = 2;
	while(y < 2001){
		int m = 1;
		while(m <= 12){
			if(weekday == 0){
				answer = answer + 1;
			}
			weekday = (weekday + getDaysOfMonth(m, y)) % 7;
			m = m + 1;
		}
		y = y + 1;
	}
	assert(answer == 171);
}

main();
