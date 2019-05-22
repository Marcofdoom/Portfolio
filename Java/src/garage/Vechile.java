package garage;

public abstract class Vechile {

	private static int counter;

	protected int vechileId;
	protected String make;
	protected int numberOfSeats;
	protected String engine;
	protected int price;

	public Vechile(String make, int numberOfSeats, String engine, int price) {
		this.vechileId = ++counter;
		this.make = make;
		this.numberOfSeats = numberOfSeats;
		this.engine = engine;
		this.price = price;
	}

	public abstract int calculateValue();

	public int getVechileId() {
		return vechileId;
	}

	public void setVechileId(int vechileId) {
		this.vechileId = vechileId;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public int getNumberOfSeats() {
		return numberOfSeats;
	}

	public void setNumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}

	public String getEngine() {
		return engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}