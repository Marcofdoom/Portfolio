package inheritance;

public class Cat extends Animal {

	@Override
	public void speak() {
		System.out.println("Meow");
		
	}

	@Override
	public void move() {
		System.out.println("Walking");
		
	}

}
