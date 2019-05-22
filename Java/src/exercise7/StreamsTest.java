package exercise7;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.*;

import exercise6.CollectionsTest;

public class StreamsTest {

	private int[] numberArray = new int[100];

	private List<Integer> numberList;

	public static void main(String args[]) {
		new StreamsTest();
	}

	public StreamsTest() {
		numberList = new ArrayList<Integer>();

		// IntStream.range(1, numberArray.length).forEach(x -> numberArray[x] = x);

		// String.valueOf(i)
		// for(int i : numberArray){
		//
		// }

		// System.out.println(number);
		// Arrays.asList(numberArray).stream().forEach(x -> System.out.println(x));

		IntStream.range(1, 101).forEach(x -> numberList.add(x));
		numberList.stream().forEach(x -> System.out.println(x));
	}
}