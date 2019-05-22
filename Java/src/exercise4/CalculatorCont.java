package exercise4;

import java.util.function.BiFunction;

enum Operators {
	PLUS, SUBTRACT, MULTIPLY, DIVIDE;
}

public class CalculatorCont {

	BiFunction<Integer, Integer, Integer> add = (a, b) -> a + b;
	BiFunction<Integer, Integer, Integer> subtract = (a, b) -> a - b;
	BiFunction<Integer, Integer, Integer> multiply = (a, b) -> a * b;
	BiFunction<Integer, Integer, Integer> divide = (a, b) -> a / b;

	public static void main(String args[]) {
		new CalculatorCont();
	}

	public CalculatorCont() {
		System.out.println(calculcateNumbers(4, 2, Operators.PLUS));

		System.out.println(add.apply(2, 4));
	}

	public double calculcateNumbers(double a, double b, Operators operator) {

		switch (operator) {
		case PLUS:
			return a + b;
		case SUBTRACT:
			return a - b;
		case MULTIPLY:
			return a * b;
		case DIVIDE:
			try {

				return a / b;

			} catch (ArithmeticException e) {

				if (b == 0) {
					System.out.println("Cannot divide by 0");
				}

				return 0;
			}
		default:
			return 0;
		}
	}
}