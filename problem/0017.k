/*
http://projecteuler.net/problem=17

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? 
NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
*/
import("konoha");

String[] oneDigit = [ ""        , "one"     , "two"    ,"three",
					"four"   ,"five"     ,"six"     ,"seven",
					"eight"  ,"nine"     ,"ten"     ,"eleven",
					"twelve" ,"thirteen" ,"fourteen","fifteen",
					"sixteen","seventeen","eighteen","nineteen"];

String[] twoDigits = [ "","ten" , "twenty" , "thirty" ,"forty", "fifty",
						"sixty", "seventy", "eighty", "ninety"];

String underTwenty(int n) {
	return global.oneDigit[n];
}

String underHundred(int n) {
	return global.twoDigits[n];
}

String toAlphabet(int n) {
	if(n > 0 && n < 20) {            /*   1 - 19 */
		return underTwenty(n);
	} else if(n >= 20 && n < 100) {  /*  20 - 99 */
		return underHundred(n / 10) + underTwenty(n % 10);
	} else if(n%100 == 0) {
		return underTwenty(n/100) + "hundred";
	} else {                         /* 100 -999 */
		return underTwenty(n/100) + "hundred" + "and" + toAlphabet(n%100);
	}
}

void main() {
	int i = 1;
	int length = 11; //"one thousand"
	while(i <= 999) {
		System.p(toAlphabet(i));
		System.p(toAlphabet(i).size);
		length += toAlphabet(i).size;
		i      += 1;
	}
	System.p(length);
}

main();
