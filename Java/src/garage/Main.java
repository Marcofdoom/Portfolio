package garage;

import garage.factory.VechileFactory;

public class Main {

	public static void main(String arg[]) {
		Garage garage = new Garage();

		VechileFactory vechileFactory = new VechileFactory();

		garage.addVechile(vechileFactory.getVechile(VechileType.CAR, "Ford", 4, "Combustion", 2000));
		garage.addVechile(vechileFactory.getVechile(VechileType.MOTORCYCLE, "Suzuki", 1, "Combustion", 1000));
		garage.addVechile(vechileFactory.getVechile(VechileType.PLANE, "Boeing", 4, "Jet", 20000));

		garage.removeVechile(1);
		garage.repairVechile(2);

		garage.returnGarageDetails();

		// CarBuilder carBuilder = new CarBuilderImpl();
		// carBuilder.setEngine("combustion").setPrice(2000).build();
	}
}