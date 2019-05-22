package exercise2;

public class Calculator {

	public static void main(String args[]) {

		Calculator calculator = new Calculator();
		System.out.println(calculator.add(2, 4));

	}

	public double add(double a, double b) {
		return a + b;
	}

	public double subtract(double a, double b) {
		return a - b;
	}

	public double multiply(double a, double b) {
		return a * b;
	}

	public double divide(double a, double b) {
		try {

			return a / b;

		} catch (ArithmeticException e) {

			if (b == 0) {
				System.out.println("Cannot divide by 0");
			}

			return 0;
		}
	}
}