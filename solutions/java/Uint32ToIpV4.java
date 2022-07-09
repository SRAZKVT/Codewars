package solutions.java;

public class Uint32ToIpV4 {
	public static String longToIP(long ip) {
		return String.format("%d.%d.%d.%d",
				(ip >> 24) & 0x000000FF,
				(ip >> 16) & 0x000000FF,
				(ip >> 8) & 0x000000FF,
				ip & 0x000000FF);
	}
}
