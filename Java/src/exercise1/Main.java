package exercise1;

import java.util.function.Consumer;

public class Main {

	Consumer<String> display = a -> System.out.println(a);

	public static void main(String args[]) {
		Main main = new Main();
	}

	public Main() {
		helloWorldString("Hello world!");
		display.accept("I am using the Consumer Interface " + "Hello World");
	}

	public String helloWorldString(String string) {
		return string;
	}
}