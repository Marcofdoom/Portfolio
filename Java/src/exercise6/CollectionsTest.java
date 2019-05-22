package exercise6;

import java.util.ArrayList;
import java.util.List;

public class CollectionsTest {

	private List<Integer> numberList;
	private int[] numberArray;

	public static void main(String args[]) {
		new CollectionsTest();
	}

	public CollectionsTest() {
		numberList = new ArrayList<Integer>();
		numberArray = new int[100];

		ArrayLoop(1, numberArray.length);

		System.out.println("-------");

		listLoop(100, 999);

		System.out.println("-------");

		multiplyArrayList(numberList);
	}

	public void ArrayLoop(int firstNumber, int secondNumber) {
		for (int i = 0; i < numberArray.length; i++) {
			numberArray[i] = i + 1;
			System.out.println(numberArray[i]);
		}
	}

	public void listLoop(int firstNumber, int secondNumber) {
		for (int i = firstNumber; i <= secondNumber; i++) {
			numberList.add(i);
			System.out.println(i);
		}
	}

	public void multiplyArrayList(List<Integer> numberList) {
		for (Integer number : numberList) {
			System.out.println(number * 10);
		}
	}
}