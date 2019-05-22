package inheritance;

import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String args[]) {

		List<Animal> animals = new ArrayList<Animal>();

		Cat cat = new Cat();
		Bird bird = new Bird();
		Horse horse = new Horse();

		animals.add(cat);
		animals.add(bird);
		animals.add(horse);

		animals.stream().forEach(x -> x.speak());
	}
}