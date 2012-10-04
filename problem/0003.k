/*
http://projecteuler.net/problem=3

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?


*/


import("konoha.assign");
import("konoha.while");
import("konoha.math");


int divid() {
    int i = 2, max = 0, tmp, counter = 0;
    int number = 600851475143;
//    int number = 13195;
    int r = Math.sqrt(number);

    while(i != r) {
	if((tmp = number % i) == 0) {
//	    System.p(max);
	    max = i;
	    while((number % i) == 0) {
		number = number / i;
	    }
	}
	i += 1;
    }
    return max;
}

System.p(divid()); //-> 6857
