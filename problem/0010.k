/*
  http://projecteuler.net/problem=10

  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
  Find the sum of all the primes below two million.



*/

import("konoha.assign");
import("konoha.new");
import("konoha.float");
import("cstyle");
import("konoha.array");
import("konoha.class");
import("gmp");

void divid() {
	Mpz  i = 2, j = 2;
	Mpz[] ia = new Mpz[2000001];
	while(i <= 2000000) {
		j = 2;
		while(i*j <= 2000000) {
			ia[i*j] = 1;
			j = j + 1;
		}
		i = i + 2;
	}
	i = 2;
	int ans = 0;
	while(i <= 2000000) {
		if(ia[i] == 0) {
			ans = ans + i;
		}
		i = i + 2;
	}
	System.p(ans);
}

void main() {

	divid();
}

main();
