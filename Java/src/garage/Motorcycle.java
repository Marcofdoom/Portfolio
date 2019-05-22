package garage;

public class Motorcycle extends Vechile {

	private String handleBarType;

	public Motorcycle(String make, int numberOfSeats, String engine, int price) {
		super(make, numberOfSeats, engine, price);
	}

	@Override
	public int calculateValue() {
		return price * 1;
	}
}