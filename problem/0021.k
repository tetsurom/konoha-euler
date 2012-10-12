/*
http://projecteuler.net/problem=21

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a b, then a and b are an amicable pair and each of a and b are called amicable numbers.
For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
Evaluate the sum of all the amicable numbers under 10000.
*/
import("konoha");
import("konoha.math")

int d(int n){
	if(n <= 1){
		return 0;
	}
	int sum = 1;
	int div_max = Math.sqrt(n);
	if(div_max * div_max == n){
		sum += div_max;	
	}
	int div = 2;
	while(div < div_max){
		if(n % div == 0){
			sum += div;
			sum += n / div;
		}
		div += 1;
	}
	return sum;
}

boolean isAmicable(int n){
	return d(n) != n && d(d(n)) == n;
}

void main() {
	assert(isAmicable(220));
	assert(isAmicable(284));
	int sum = 0;
	int n = 1;
	while(n <= 10000){
		if(isAmicable(n)){
			sum += n;
		}
		n += 1;
	}
	System.p(sum);
}

main();
