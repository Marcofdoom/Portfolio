package exercise5;

import java.util.HashMap;

public class PrintNumbers {

	private HashMap<Character, String> charToString;

	public static void main(String args[]) {
		new PrintNumbers();
	}

	public PrintNumbers() {
		charToString = new HashMap<Character, String>();
		charToString.put('1', "one");
		charToString.put('2', "two");
		charToString.put('3', "three");
		charToString.put('4', "four");
		charToString.put('5', "five");
		charToString.put('6', "six");
		charToString.put('7', "seven");
		charToString.put('8', "eight");
		charToString.put('9', "nine");

		System.out.println(printNumberToWork(4516));
		System.out.println(printNumberToWork(4506));
		System.out.println(printNumberToWork(4026));
	}

	public String printNumberToWork(int number) {
		String numberToString = reverseString(String.valueOf(number));

		StringBuilder stringBuilder = new StringBuilder();

		char[] stringToChar = numberToString.toCharArray();

		for (int i = stringToChar.length - 1; i >= 0; i--) {

			// Thousand
			if (i == 3) {
				stringBuilder.append(charToString.get(stringToChar[i]) + " thousand ");
			}

			// Hundred
			if (i == 2 && stringToChar[2] != '0') {
				stringBuilder.append(charToString.get(stringToChar[i]) + " hundred and");
			}

			// Ten
			if (i == 1 && stringToChar[1] != 1) {

				switch (stringToChar[i]) {
				case '2':
					stringBuilder.append(" twenty");
					break;
				case '3':
					stringBuilder.append(" thirty");
					break;
				case '4':
					stringBuilder.append(" fourty");
					break;
				case '5':
					stringBuilder.append(" fifty");
					break;
				case '6':
					stringBuilder.append(" sixty");
					break;
				case '7':
					stringBuilder.append(" seventy");
					break;
				case '8':
					stringBuilder.append(" eighty");
					break;
				case '9':
					stringBuilder.append(" ninety");
					break;
				}
			}

			if (i == 1 && stringToChar[1] == '1') {
				switch (stringToChar[0]) {
				case '0':
					stringBuilder.append(" ten");
					break;
				case '1':
					stringBuilder.append(" eleven");
					break;
				case '2':
					stringBuilder.append(" twelve");
					break;
				case '3':
					stringBuilder.append(" thirteen");
					break;
				case '4':
					stringBuilder.append(" fourteen");
					break;
				case '5':
					stringBuilder.append(" fifteen");
					break;
				case '6':
					stringBuilder.append(" sixteen");
					break;
				case '7':
					stringBuilder.append(" seventeen");
					break;
				case '8':
					stringBuilder.append(" eighteen");
					break;
				case '9':
					stringBuilder.append(" ninteen");
					break;
				}
			}

			if (i == 0 && stringToChar[1] != '1') {
				stringBuilder.append(" " + charToString.get(stringToChar[i]));
			}
		}

		return stringBuilder.toString();
	}

	public void printNumbersBetween(int a, int b) {
		for (int i = a; i <= b; i++) {
			System.out.println(i);
		}
	}

	public void printNumbersBetweenToString(int a, int b) {
		for (int i = a; i <= b; i++) {
			System.out.println(i);
		}
	}

	private String reverseString(String string) {
		StringBuilder sb = new StringBuilder();

		for (int i = string.length() - 1; i >= 0; i--) {
			sb.append(string.charAt(i));
		}

		return sb.toString();
	}
}