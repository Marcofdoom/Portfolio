package exercise3;

import java.util.function.BiPredicate;

public class CheckString {

	BiPredicate<String, String> biPredicate = (s1, s2) -> s1.matches(s2);

	public static void main(String args[]) {
		new CheckString();
	}

	public CheckString() {
		System.out.println(checkString("hard coded"));
		System.out.println("I am using biPredicate " + biPredicate.test("Hard coded", "Hard coded"));
	}

	public boolean checkString(String string) {
		return string.matches("hard coded");
	}

	public boolean checkTwoString(String s1, String s2) {
		return s1.matches(s2);
	}
}