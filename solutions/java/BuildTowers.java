package answers;

import java.util.Arrays;

public class BuildTowers {
	public static void main(String[] args) {
		System.out.println(Arrays.toString(towerBuilder(5)));
	}
	
	public static String[] towerBuilder(int nFloors) {
		String[] r = new String[nFloors];
		for (int i = 0; i < r.length; i++) {
			StringBuilder s = new StringBuilder();
			for (int j = 0; j < nFloors - i - 1; j++) s.append(' ');
			for (int j = 0; j < (i + 1) * 2 - 1; j++) s.append('*');
			for (int j = 0; j < nFloors - i - 1; j++) s.append(' ');
			r[i] = s.toString();
		}
		return r;
	}
}
