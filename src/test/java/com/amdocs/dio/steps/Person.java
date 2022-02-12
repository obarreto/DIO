package com.amdocs.dio.steps;

public class Person {
	private String name;
	private String endereco;
	private String email;
	private int age;
	
	public Person(String name, String endereco, String email, int age) {
		super();
		this.name = name;
		this.endereco = endereco;
		this.email = email;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", endereco=" + endereco + ", email=" + email + ", age=" + age + "]";
	}
	
	
}
