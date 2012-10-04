/*
http://projecteuler.net/problem=5

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

*/
import("konoha");

boolean isDivide(int num) {
	int i = 3;
	while(i<20) {
		if(num % i != 0) {
			return false;
		}
		i += 1;
	}
	return true;
}

void main() {
	int ans = 2520;
	while(!isDivide(ans)) {
		ans += 20;
	}
	System.p(ans);
}

main();
