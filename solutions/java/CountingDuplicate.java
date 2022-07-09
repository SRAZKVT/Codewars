public class CountingDuplicate {
	public static int duplicateCount(String text) {
		return text.length() - text.toLowerCase().chars().distinct().count();
	}
}
