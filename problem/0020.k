/*
  http://projecteuler.net/problem=20

  n! means n  (n  1)  ...  3  2  1
  For example, 10! = 10  9  ...  3  2  1 = 3628800,and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
  Find the sum of the digits in the number 100!

*/
import("konoha.assign");
import("konoha.while");
import("konoha.break");
import("konoha.array");
import("konoha.float");
import("konoha.class");


void main() {
    int i = 1;
    float sum = 1;
    int[] ia = new int[0];
    int counter = 0;
    boolean flag = false;
    
    while(i <= 100) {
	ia.add(i);
//	System.p(ia[i-1]);
	i += 1;
    }

    i = 0;
    while(i < ia.length) {
	while(ia[i] % 5 == 0) {
	    ia[i] = ia[i] / 5;
	    counter += 1;
	}
	i += 1;
    }

    i = 0;
    while(i < ia.length) {
	while(ia[i] % 2 == 0) {
	    ia[i] = ia[i] / 2;
	    counter -= 1;
	    if(counter == 0) {
		flag = true;
		break;
	    }
	}
	if(flag) {
	    break;
	}
	i += 1;
    }

    i = 1;
    while(i <= ia.length) {
	if(ia[i-1] != 1) {
	    System.p(ia[i-1]);
	}
	i += 1;
    }

    i = 0;
    while(i < ia.length) {
	sum *= ia[i];
	i += 1;
    }
    System.p(sum);
}

main();
