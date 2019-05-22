package inheritance;

public class Horse extends Animal {

	@Override
	public void speak() {
		System.out.println("Nay");

	}

	@Override
	public void move() {
		System.out.println("Trotting");
	}
}