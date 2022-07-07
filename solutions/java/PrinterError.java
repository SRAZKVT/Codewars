package answers;

public class PrinterError {
	public static void main(String[] args) {
		System.out.println(printerError("aaaxbbbbyyhwawiwjjjwwm"));
	}

	private static String printerError(String s) {
		int n = (int) s.chars().filter(e -> e < 'a' || e > 'm').count();
		return String.format("%d/%d", n, s.length());
	}
}
