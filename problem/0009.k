/*
http://projecteuler.net/problem=9

A Pythagorean triplet is a set of three natural numbers, a b c, for which,
 a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.Find the product abc.

*/
import("konoha");

boolean check(int a,int b,int c) {
	return (a*a + b*b == c*c);
}

void main() {
	int a,b,c;
	a = 1;b = 1; c = 998;
	while(c > b) {
		while(b > a) {
			if(check(a,b,c)) {
				System.p(a);
				System.p(b);
				System.p(c);
				System.p(a*b*c);
			}
			a += 1;
			c -= 1;
		}
		b += 1;
		c = c + a - 2;
		a = 1;
		assert(a+b+c==1000);
	}
}

main();
