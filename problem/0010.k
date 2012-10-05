/*
http://projecteuler.net/problem=10

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.



*/
import("konoha.assign");
import("konoha.float");
import("konoha.while");
import("konoha.break");

void main() {
    float sum = 2;
    int  i = 3, j = 2;

    while(i <= 2000000) {
//    while(i <= 10) {
	while(i != j) {
	    if(i % j == 0) {
		break;
	    }
	    j += 1;
	}

	if(i == j) {
//	    System.p(i);
	    sum += i;
	}

        i += 1;
	j = 2;
    }
    System.p(sum);
}

main();
