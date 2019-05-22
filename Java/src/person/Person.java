package person;

public class Person {

	private String name;
	private int age;
	private String jobTitle;

	public Person(String name, int age, String jobTitle) {
		this.name = name;
		this.age = age;
		this.jobTitle = jobTitle;
	}

	@Override
	public String toString() {
		return name + " " + age + " " + jobTitle;
	}

	public String getName() {
		return name;
	}
}