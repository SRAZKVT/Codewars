package answers;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class TakeANumber {
	public static void main(String[] args) {
		System.out.println(sumDigPow(10, 150));
	}
	
	public static List<Long> sumDigPow(long min, long max) {
        long[] r = new long[(int) (max - min)];
        for (long i = min; i != max; i++) r[(int) (i - min)] = i;
        return Arrays.stream(r).boxed().filter(e -> {
        	int[] d = String.valueOf(e).chars().map(el -> el - 48).toArray();
        	long ret = 0;
        	for (int i = 0; i != d.length; i++) ret += Math.pow(d[i], i + 1);
        	return e == ret;
        }).collect(Collectors.toList());
    }
}
