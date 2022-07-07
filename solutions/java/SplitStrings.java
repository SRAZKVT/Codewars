package answers;

import java.util.Arrays;

public class SplitStrings {
	public static void main(String[] args) {
		System.out.println(Arrays.toString(splitString("abc")));
	}

	private static String[] splitString(String input) {
		String[] returning = new String[input.length() / 2 + (input.length() % 2 == 0 ? 0 : 1)];
		int i = 0;
		while (input.length() != 0) {
			returning[i++] = new String(new char[] {input.charAt(0), input.length() >= 2 ?input.charAt(1) : '_'});
			if (input.length() == 1) input += '_';
			input = input.substring(2);
		}
		return returning;
	}
}
