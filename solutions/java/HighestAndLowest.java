package answers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class HighestAndLowest {
	public static void main(String[] args) {
		System.out.println(highAndLow("1 2 3 4 5"));  // return "5 1"
		System.out.println(highAndLow("1 2 -3 4 5")); // return "5 -3"
		System.out.println(highAndLow("1 9 3 4 -5")); // return "9 -5"
	}

	private static String highAndLow(String numbers) {
		List<Integer> ls = Arrays.asList(numbers.split(" ")).stream().map(Integer::parseInt).collect(Collectors.toList());
		return String.format("%d %d", ls.stream().max(Integer::compare).get(), ls.stream().min(Integer::compare).get());
	}
}
