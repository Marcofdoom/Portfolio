package inheritance;

public class Bird extends Animal {

	@Override
	public void speak() {
		System.out.println("Tweet");
		
	}

	@Override
	public void move() {
		System.out.println("flying");
		
	}

}
