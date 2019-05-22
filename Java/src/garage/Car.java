package garage;

public class Car extends Vechile {

	private int numberOfDoors;

	public Car(String make, int numberOfSeats, String engine, int price) {
		super(make, numberOfSeats, engine, price);
	}

	@Override
	public int calculateValue() {
		return price * 2;
	}
}