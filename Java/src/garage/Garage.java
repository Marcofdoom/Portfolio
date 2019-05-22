package garage;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Garage {

	private List<Vechile> vechiles = new ArrayList<Vechile>();

	public int calculateTotalValue() {
		return vechiles.stream().mapToInt(x -> x.calculateValue()).sum();
	}

	public void addVechile(Vechile vechile) {
		vechiles.add(vechile);
	}

	public void removeVechile(int vechileId) {
		vechiles.removeIf(a -> vechileId == a.getVechileId());
	}

	public void removeVechile(String vechileMake) {
		vechiles.removeIf(a -> vechileMake.equals(a.getMake()));
	}

	public int totalVechiles() {
		return vechiles.size();
	}

	public int repairVechile(int vechileId) {
		return vechiles.stream().filter(x -> x.getVechileId() == vechileId).findFirst().get().getPrice();
	}

	public void returnGarageDetails() {
		System.out.println("Number of Vechiles in Garage: " + totalVechiles());
		System.out.println("Total cost of all vechiles: " + calculateTotalValue());
	}
}