/*
http://projecteuler.net/problem=23

A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.
A number n is called deficient if the sum of its proper divisors is less than n and it is called abundant if this sum exceeds n.

As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.
Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

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
		sum -= div_max;	
	}
	int div = 2;
	while(div <= div_max){
		if(n % div == 0){
			sum += div;
			sum += n / div;
		}
		div += 1;
	}
	return sum;
}

boolean isAbundant(int n){
	return d(n) > n;
}

boolean judge(int[] abundants, int n){
	int i = 0;
	while(i < abundants.size){
		int d = n - abundants[i];
		if(d < 12){
			return false;
		}
		if(isAbundant(d)){
			return true;
		}
		i += 1;
	}
	return false;
}

int[] getAbundantList(int max){
	if(max < 12){
		return [];
	}
	int[] a = [12];
	int n = 13;
	while(n < max){
		if(isAbundant(n)){
			a.add(n);
		}
		n += 1;
	}
	return a;
}

void main() {
	assert(d(28) == 28);
	assert(d(12) == 16);
	assert(isAbundant(12));
	
	int[] abundants = getAbundantList(28123);
	assert(abundants[0] == 12);
	assert(judge(abundants, 24));
	
	int sum = 0;
	int n = 1;
	while(n < 28123){
		if(!judge(abundants, n)){
			sum += n;
		}	
		n += 1;
	}
	System.p(sum);
}

main();
