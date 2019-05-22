package person;

public class Main {

	public static void main(String args[]) {
		PersonController personController = new PersonController();

		personController.addPerson(new Person("Steve", 21, "Engineer"));
		personController.addPerson(new Person("Marc", 23, "Engineer"));
		personController.addPerson(new Person("John", 25, "Engineer"));

		System.out.println(personController.findPerson("Bob"));

		personController.printAllPeople();
	}
}