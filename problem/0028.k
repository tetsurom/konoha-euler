/*
http://projecteuler.net/problem=28

Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:
21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13
It can be verified that the sum of the numbers on the diagonals is 101.
What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

*/
import("konoha.assign");
import("cstyle");

int solve(int n){
	int limit = n * n;
	int sum = 1;
	int k = 1;
	int d = 2;
	while(k < limit){
		sum = sum + 4 * k + 10 * d;
		k = k + 4 * d;
		d = d + 2;
	}
	return sum;
}


void main() {
	assert(solve(5) == 101);
	assert(solve(1001) == 669171001);
}

main();
