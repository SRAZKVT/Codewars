package solutions.java;

import java.util.ArrayDeque;

public class ValidBraces {
	public static void main(String[] a) {
		System.out.println(isValid("(){}[]"));
		System.out.println(isValid("([{}])"));
		System.out.println(isValid("(}"));
		System.out.println(isValid("[(])"));
		System.out.println(isValid("[({})](]"));
	}
	
	public static boolean isValid(String braces) {
		ArrayDeque<Character> s = new ArrayDeque<>();
		for (Character c : braces.toCharArray()) {
			switch (c) {
				case '(' -> s.push(')');
				case '[' -> s.push(']');
				case '{' -> s.push('}');
				default -> {if (s.size() < 1 || s.pop() != c) return false;}
			}
		}
		return s.size() == 0;
	}
}
