/*
http://projecteuler.net/problem=4


A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
Find the largest palindrome made from the product of two 3-digit numbers.

*/
import("konoha");

int[] a = new int[](0);

boolean isPalindromic(int n){
	if(n < 0){
		return isPalindromic(-n);
	}else if(n < 10){
		return true;
	}
	int[] a = global.a;
	a.clear();
	while(n > 0){
		a.add(n % 10);
		n = n / 10;
	}
	int i = 0;
	int s = a.size;
	while(i < s/2){
		if(a[i] != a[s-i-1]){
			return false;
		}
		i += 1;
	}
	return true;
}

void main() {
	int n = 999;
	int answer = 0;
	while(n > 100){
		if(n % 10 != 0){
			int m = 999;
			while(m >= n){
				if(m % 10 != 0){
					int p = n * m;
					if(isPalindromic(p)){
						if(p >= answer){
							answer = p;
						}
					}
				}
				m -= 1;
			}
		}
		n -= 1;
	}
	System.p(answer);
}

main();
