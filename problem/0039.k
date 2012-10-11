/*
http://projecteuler.net/problem=39

If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.
{20,48,52}, {24,45,51}, {30,40,50}
For which value of p  1000, is the number of solutions maximised?

*/

import("konoha");

int numOfSolution(int p){
	int n = 0;
	int a = 1;
	int min_a = p / 3;
	int min_b = p / 2;
	while(a <= min_a){
		int b = a;
		while(b <= min_b && b * 2 <= p - a){
			int c = p - (a + b);
			if(a * a + b * b == c * c){
				n += 1;
			}
			b += 1;
		}
		a += 1;
	}
	return n;
}

void main() {
	int max = 0;
	int p_max;
	int p = 3 + 4 + 5;
	while(p <= 1000){
		int n = numOfSolution(p);
		if(max < n){
			max = n;
			p_max = p;
		}
		p += 1;
	}
	System.p(p_max);
}

main();
