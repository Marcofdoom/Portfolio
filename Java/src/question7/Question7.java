package question7;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public class Question7 {

	private List<Integer> numberList;

	public static void main(String arg[]) {
		Question7 question7 = new Question7();
	}

	public Question7() {
		numberList = new ArrayList<Integer>();
		numberList.add(5);
		numberList.add(9);

		System.out.println(calculate(numberList));
		System.out.println(calculateRange(5,11));
	}

	private int calculate(List<Integer> numberList) {
		return (int) numberList.stream().filter(x -> x % 5 == 0).count();
	}

	private int calculateRange(int inputOne, int inputTwo) {
		return (int) IntStream.range(inputOne, inputTwo).filter(x -> x % 5 == 0).count();
	}
}