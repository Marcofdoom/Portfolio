package garage;

public class Plane extends Vechile {

	private String planeType;

	public Plane(String make, int numberOfSeats, String engine, int price) {
		super(make, numberOfSeats, engine, price);
	}

	@Override
	public int calculateValue() {
		return price * 4;
	}
}