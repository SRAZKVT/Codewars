package answers;

import java.util.stream.IntStream;

public class CreatePhoneNumber {
	public static void main (String[] args) {
		System.out.println(solution(new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 0}));
	}
	
	private static String solution(int[] s) {
		return String.format("(%d%d%d) %d%d%d-%d%d%d%d", IntStream.of(s).boxed().toArray());
	}
}
