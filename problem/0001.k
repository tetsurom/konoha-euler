/*
http://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.

*/

import("konoha.assign")
import("cstyle")

int p1(int limit){
	int m = 0;
	int n = 1;
	while(n < limit){
		if(n % 3 == 0 || n % 5 == 0){
			m += n;
		}
		n += 1;
	}
	return m;
}


//System.p(p1(10)); -> 23
System.p(p1(1000));

