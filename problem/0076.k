/*
http://projecteuler.net/problem=76


It is possible to write five as a sum in exactly six different ways:
4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1
How many different ways can one hundred be written as a sum of at least two positive integers?

*/
import("cstyle");
import("konoha.array");
import("konoha.new");

int numOfWays(int n){
	return numOfWays(n, n - 1);
}

int numOfWays(int n, int maxnum){
	if(maxnum > n){
		maxnum = n;
	}
	if(n <= 1){
		return 1;
	}
	if(maxnum <= 1){
		return 1;
	}
	int ways = 0;
	int i = 1;
	while(i <= maxnum){
		ways = ways + numOfWays(n - i, i);
		i = i + 1;
	}

	return ways;
}

void main() {
	assert(numOfWays(5) == 6);
	System.p(numOfWays(100));
}

main();
