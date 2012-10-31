/*
http://projecteuler.net/problem=100


If a box contains twenty-one coloured discs, composed of fifteen blue discs and six red discs, and two discs were taken at random, it can be seen that the probability of taking two blue discs, P(BB) = (15/21)(14/20) = 1/2.
The next such arrangement, for which there is exactly 50% chance of taking two blue discs at random, is a box containing eighty-five blue discs and thirty-five red discs.
By finding the first arrangement to contain over 1012 = 1,000,000,000,000 discs in total, determine the number of blue discs that the box would contain.

*/
import("cstyle");
import("gmp")

Mpf calcDeterminant(Mpf n){
	return 1 + 2 * n * (n - 1);
}

// FIXME: It is too slow. there should be faster way.
int solve(Mpz min){
	int answer = 0;
	Mpz totalNum = min;
	while(true){
		Mpf sqrt_d = calcDeterminant(totalNum.toMpf()).sqrt();
		if(sqrt_d.toint() == sqrt_d){
			answer = sqrt_d.toint();
			break;
		}
		totalNum = totalNum + 1;
	}
	answer = (answer + 1) / 2;
	return answer;
}

void main() {
	assert(calcDeterminant(21) == 841);
	assert(calcDeterminant(21).sqrt() == 29);
	assert(calcDeterminant(21).sqrt().toint() == calcDeterminant(21).sqrt());
	assert(calcDeterminant(23).sqrt().toint() != calcDeterminant(23).sqrt());
	assert(solve(21) == 15);
	System.p(solve((10).toMpz().power(12)));
}

main();
