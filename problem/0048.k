/*
http://projecteuler.net/problem=48


The series, 11 + 22 + 33 + ... + 1010 = 10405071317.
Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

*/
import("gmp");
import("cstyle");

void main() {
	int i = 1;
	Mpz sum = 0;
	while(i <= 1000){
		sum = sum + (i.toMpz()).power(i);
		i = i + 1;
	}
	sum = sum % "10000000000".toMpz();
	assert(sum == 9110846700);
}

main();
