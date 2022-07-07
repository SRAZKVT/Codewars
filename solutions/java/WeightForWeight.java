package answers;

import java.util.Arrays;
import java.util.stream.Collectors;

public class WeightForWeight {
	public static void main(String[] args) {
		System.out.println(orderWeight("2000 10003 1234000 44444444 9999 11 11 22 123"));
	}

	public static int getNumberWeight(String n) {
		return n.chars().map(e -> e - 48).sum();
	}
	
	public static String orderWeight(String strng) {
		return Arrays.stream(strng.split(" ")).sorted((str1, str2) -> {
			int x = Integer.compare(getNumberWeight(str1), getNumberWeight(str2));
			if (x == 0) x = str1.compareTo(str2);
			return x;
		}).collect(Collectors.joining(" "));
	}
}