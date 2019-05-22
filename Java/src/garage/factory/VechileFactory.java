package garage.factory;

import garage.Car;
import garage.Motorcycle;
import garage.Plane;
import garage.Vechile;
import garage.VechileType;

public class VechileFactory {

	public Vechile getVechile(VechileType vechileType, String make, int numberOfSeats, String engine, int price) {
		switch (vechileType) {
		case CAR:
			return new Car(make, numberOfSeats, engine, price);
		case MOTORCYCLE:
			return new Motorcycle(make, numberOfSeats, engine, price);
		case PLANE:
			return new Plane(make, numberOfSeats, engine, price);
		default:
			return null;
		}
	}
}