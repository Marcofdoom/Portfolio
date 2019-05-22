//package garage.builder;
//
//import garage.Car;
//
//public class CarBuilderImpl implements CarBuilder {
//
//	private Car carTemp;
//
//	@Override
//	public Car build() {
//		Car car = new Car();
//		car.setEngine(carTemp.getEngine());
//		car.setEngine(carTemp.getEngine());
//		return car;
//	}
//
//	@Override
//	public CarBuilder setEngine(String engine) {
//		carTemp.setEngine(engine);
//		return this;
//	}
//
//	@Override
//	public CarBuilder setPrice(int price) {
//		carTemp.setPrice(price);
//		return this;
//	}
//}