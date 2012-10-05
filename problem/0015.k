/*
http://projecteuler.net/problem=15

Starting in the top left corner of a 2^2 grid, there are 6 routes (without backtracking) to the bottom right corner.


How many routes are there through a 20^20 grid?

*/
import("konoha");

int fact(int n){
	int f = 1;
	while(n > 1){
		f *= n;
		n -= 1;
	}
	return f;
}

int permut(int n, int r){
	int f = 1;
	int limit = n - r;
	while(n > limit){
		f *= n;
		n -= 1;
	}
	return f;
}

int routes(int w, int h){
	return permut(w+h, w) / fact(h)
}

void main() {
	System.p(routes(2, 2)); // 6
	System.p(permut(20, 20)); // 137846528820 
}

main();
