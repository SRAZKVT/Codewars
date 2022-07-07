package answers;

public class NextPerfectSquare {
	public static void main(String[] args) {
		System.out.println(findNextSquare(625));
	}
	
	public static long findNextSquare(long sq) {
		double d = Math.sqrt(sq);
		if (d % 1 != 0) return -1;
		return ((long) (d + 1) * (long) (d + 1));
	}
}