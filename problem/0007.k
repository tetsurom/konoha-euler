/*
  http://projecteuler.net/problem=7

  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
  What is the 10 001st prime number?

*/
import("konoha.assign");
import("konoha.while");
import("konoha.break");


void main() {
    int count = 1, i = 3, j = 2;
    boolean flag = false;


    while(i < 1000000) {
	while(i != j) {
	    if(i % j == 0) {
		break;
	    }
	    j += 1;
	}

	if(i == j) {
	    System.p(i);
	    count += 1;
	}

	if(count == 10001 && !flag) {
	    System.p(i);  // -> 104743
	    flag = true;
	}
        i += 1;
	j = 2;
    }
}

main();
