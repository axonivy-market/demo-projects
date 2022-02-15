package ch.ivyteam.demo.jpa.demos.test.mock;

public class NotMockedException extends RuntimeException {
	public NotMockedException() {
		super(getFunction());
	}

	private static String getFunction() {
		String result = "<unknown>";
		try {
			throw new RuntimeException();
		} catch (Exception e) {
			StackTraceElement[] st = e.getStackTrace();
			if(st.length > 2) {
				StackTraceElement el = st[2];

				result = el.toString();
			}
		}
		return result;
	}
}
