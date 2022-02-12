package com.amdocs.dio;
public class FizzBuzz implements Renderer{

	public String render(int number) {
		if(number % 3 == 0 && number % 5 == 0)
			return "FizzBuzz";
		if(number % 3 == 0)
			return "Fizz";
		if(number % 5 == 0)
			return "Buzz";
		return String.valueOf(number);
		//return null;
	}
}


