/*
http://projecteuler.net/problem=30


Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
As 1 = 14 is not a sum it is not included.
The sum of these numbers is 1634 + 8208 + 9474 = 19316.
Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

*/
import("konoha");

int pow5(int n){
	return n * n * n * n * n;
}

int sumOfPow5(int[] num){
	return pow5(num[0]) + pow5(num[1]) + pow5(num[2]) + pow5(num[3]) + pow5(num[4]) + pow5(num[5]);
}

int makenum(int[] num){
	return num[0] * 100000 + num[1] * 10000 + num[2] * 1000 + num[3] * 100 + num[4] * 10 + num[5]; 
}


void main() {
	int sum = 0;
	int[] num = [0, 0, 0, 0, 0, 0];
	while(num[0] < 3){
		num[1] = 0;
		while(num[1] < 10){
			num[2] = 0;
			while(num[2] < 10){
				num[3] = 0;
				while(num[3] < 10){
					num[4] = 0;
					while(num[4] < 10){
						num[5] = 0;
						while(num[5] < 10){
							int n = makenum(num);
							if(n > 1 && n == sumOfPow5(num)){
								sum += n;
							}
							num[5] += 1;
						}
						num[4] += 1;
					}
					num[3] += 1;
				}
				num[2] += 1;
			}
			num[1] += 1;
		}
		num[0] += 1;
	}
	System.p(sum);
}

main();
