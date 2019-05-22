package boardexercise1;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class Main {

	private List<Integer> numberList;
	private List<Integer> numberListTwo;
	private List<String> stringList;

	public static void main(String args[]) {
		Main main = new Main();
	}

	public Main() {
		numberList = new ArrayList<Integer>();

		for (int i = 0; i < 10; i++) {
			numberList.add(i + 1);
		}

		stringList = new ArrayList<String>();
		stringList.add("Steve");
		stringList.add("John");
		stringList.add("Sam");
		stringList.add("Sam");

		numberListTwo = new ArrayList<Integer>();
		numberListTwo.add(5);
		numberListTwo.add(3);
		numberListTwo.add(4);
		numberListTwo.add(2);

		System.out.println(multipleFive(numberList));
		// iterateArray(numberList);

		// System.out.println("Occurences of String " + checkForString(stringList,
		// "Sam"));
		// System.out.println("Sum Value " + sumValues(numberList));
		// System.out.println("Largest value " + largestValue(numberList).get());

		// removeOddValues(numberList);
		// iterateArray(numberList);
		// iterateArray(numberListTwo);
		// sortIncremental(numberListTwo);
		// iterateArray(numberListTwo);
	}

	private boolean checkNumberElement(int numberToCheck) {
		return numberList.contains(numberToCheck);
	}

	private boolean checkStringElement(String stringToCheck) {
		return stringList.contains(stringToCheck);
	}

	private List<Integer> multipleFive(List<Integer> numberList) {
		return numberList.stream().map(i -> i % 5 == 0 ? i * 10 : i).collect(Collectors.toList());
	}

	private int checkForString(List<String> listToCheck, String stringToCheck) {
		return (int) listToCheck.stream().filter(x -> stringToCheck.equals(x)).count();
	}

	private int sumValues(List<Integer> listToSum) {
		return (int) listToSum.stream().mapToInt(i -> i.intValue()).sum();
	}

	private Optional<Integer> largestValue(List<Integer> numberList) {
		return numberList.stream().max(Integer::compare);
	}

	private List<Integer> removeOddValues(List<Integer> numberList) {
		return numberList.stream().filter(x -> x % 2 == 0).collect(Collectors.toList());
	}

	private List<Integer> sortIncremental(List<Integer> numberList) {
		return numberList.stream().sorted().collect(Collectors.toList());
	}
}
