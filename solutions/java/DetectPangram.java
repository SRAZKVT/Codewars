package answers;

import java.util.HashMap;

public class DetectPangram {
	public static void main(String[] args) {
		System.out.println(check("c a wjtrskgpbnd qz fl myho"));
	}
	
	public static boolean check(String sentence) {
		sentence = sentence.toLowerCase();
		HashMap<Character, Integer> hm = new HashMap<>();
		for (char i = 'a'; i <= 'z'; i++) hm.put(i, 0);
		for (char i : sentence.toCharArray()) if (hm.containsKey(i)) hm.put(i, hm.get(i) + 1);
		return hm.values().stream().allMatch(e -> e >= 1);
	}
}
