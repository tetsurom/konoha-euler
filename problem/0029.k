/*
http://projecteuler.net/problem=29


Consider all integer combinations of ab for 2 a  5 and 2 b  5:
22=4, 23=8, 24=16, 25=32
32=9, 33=27, 34=81, 35=243
42=16, 43=64, 44=256, 45=1024
52=25, 53=125, 54=625, 55=3125
If they are then placed in numerical order, with any repeats removed, we get the following sequence of 15 distinct terms:
4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125
How many distinct terms are in the sequence generated by ab for 2 a  100 and 2 b  100?

*/
import("cstyle");
import("konoha.array");
import("konoha.new");

int[][] getMatrix(int h, int w){
	int[][] a = [];
	int i = 0;
	while(i < h){
		a.add(new int[](w));
		i = i + 1;
	}
	return a;
}

int solve(int amax, int bmax){
	int answer = 0;
	int[][] matrix = getMatrix(amax+1, bmax+1);

	int a = 2;

	while(a <= amax){
		int b = 2;
		while(b <= bmax){
			if(matrix[a][b] == 0){
				matrix[a][b] = 1;
				answer = answer + 1;
				// check same value like :2^8 = 4^4 = 16^2
				int c = 2;
				int a_ = a * a;
				int b_ = b / c;
				while(a_ <= amax && b_ >= 2){
					if(b % c == 0 && matrix[a_][b_] == 0){
						matrix[a_][b_] = 2;
					}
					a_ = a_ * a;
					c  = c + 1;
					b_ = b / c;		
				}
			}
			b = b + 1;
		}
		a = a + 1;
	}
	System.p(matrix)
	return answer;
}

void main() {
	//System.p(solve(5, 5));
	System.p(solve(7, 7));
	System.p(solve(8, 8));
	//assert(solve(5, 5) == 15);
	//assert(solve(6, 6) == 23);
	//assert(solve(7, 7) == 23);
	//assert(solve(8, 8) == 44);
	//assert(solve(100, 100) == 9183);
}

main();
