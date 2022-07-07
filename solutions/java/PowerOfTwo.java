package answers;

import java.util.stream.LongStream;

public class PowerOfTwo {
	public static long[] powersOfTwo(int n) {
		  return LongStream.range(0, n+1).map(l -> (long) Math.pow(2, l)).toArray();
	  }
}
