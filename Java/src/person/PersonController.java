package person;

import java.util.ArrayList;
import java.util.List;

public class PersonController {

	private List<Person> people;

	public PersonController() {
		people = new ArrayList<Person>();
	}

	public Person findPerson(String name) {
		return people.stream().filter(a -> name.equals(a.getName())).findFirst().orElse(null);
	}

	public void addPerson(Person person) {
		people.add(person);
	}

	public void printAllPeople() {
		people.stream().forEach(x -> System.out.println(x));
	}
}