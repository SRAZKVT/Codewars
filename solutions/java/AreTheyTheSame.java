package answers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class AreTheyTheSame {
	public static void main(String[] args) {
		int[] a = new int[]{2, 2, 3};
		int[] b = new int[]{4, 9, 9};
		System.out.println(comp(a, b));
	}
	
	public static boolean comp(int[] a, int[] b) {
		if (a == null || b == null) return false;
		if (a.length != b.length) return false;
		List<Integer> la = Arrays.stream(a).map(e -> e * e).boxed().collect(Collectors.toList());
		return Arrays.stream(b).boxed().filter(e -> la.remove(e)).count() == a.length;
	}
}
