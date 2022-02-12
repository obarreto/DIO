Por que testes automatizados ?



* Aumentar a qualidadedo software
* Simplificar o processo de desenvolvimento e deploy
* Clean code - Um software com testes é mais legivel que um software sem testes
* "To me, legacy code is simply code without tests." Michael Feathers

____



O que é Cucumber

* Ferramenta líder para implementação de BDD
  * Business Driven Development - BDD é uma evolução do TDD - Test Driven Development
* Open Source or Comercial
* Utiliza sintax Gherkin

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 https://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.amdocs</groupId>
  <artifactId>dio</artifactId>
  <version>0.0.1-SNAPSHOT</version>

	<properties>
		<maven.compiler.target>8</maven.compiler.target>
		<maven.compiler.target>8</maven.compiler.target>
	</properties>
  
  <dependencies>
  	  <dependency>
    	<groupId>io.cucumber</groupId>
    	<artifactId>cucumber-java8</artifactId>
    	<version>7.1.0</version>
    	<scope>test</scope>
	 </dependency>
	 
	 <dependency>
		<groupId>junit</groupId>
		<artifactId>junit</artifactId>
		<version>4.13.2</version>
	 </dependency>
  	
  	<dependency>
  		<groupId>io.cucumber</groupId>
  		<artifactId>cucumber-junit</artifactId>
  		<version>7.1.0</version>
  	</dependency>
  </dependencies>

</project>
```

```gherkin
# Liguagem Gherkin comentario
@FizzBuzz

Feature: FizzBuzz
 Print a sequence of N numbers, 
 but for multiples of 3 print Fizz
 and for multiples of 5 print Buzz
 and for multiples of 3 and 5 print FizzBuzz

 #Contexto, executa a pré condição defina para todos os scenarios dentro da feature
 Background: run in all scenarios
 	Given the background flag is set
 	And other flag is set

 #Scenario: FizzBuzz a number
 #Given para descrever as pré condições
 #Given the user selected the number 2
 
 #Quando precisa mais um passo mais uma ação
 #And selected the category X
 
 #Para descrever uma ação do sistema
 #When the user clicked the FizzBuzz button
 
 #Descreve o resultado
 #Then the program prints 2*/
 @SingleNumber
 Scenario Outline: FizzBuzz a number
 	Given the user selected the number <Number>
 	When the user clicked the FizzBuzz button<properties>
		<maven.compiler.target>8</maven.compiler.target>
		<maven.compiler.target>8</maven.compiler.target>
	</properties>
  
  <dependencies>
  	  <dependency>
    	<groupId>io.cucumber</groupId>
    	<artifactId>cucumber-java</artifactId>
    	<version>7.1.0</version>
    	<scope>test</scope>
	 </dependency>
	 
	 <dependency>
		<groupId>junit</groupId>
		<artifactId>junit</artifactId>
		<version>4.13.2</version>
	 </dependency>
  	
  	<dependency>
  		<groupId>io.cucumber</groupId>
  		<artifactId>cucumber-junit</artifactId>
  		<version>7.1.0</version>
  	</dependency>
  </dependencies>
	
	<build>
	<plugins>
		<plugin>
		<groupId>org.apache.maven.plugins</groupId>
		<artifactId>maven-surefire-plugin</artifactId>
		<version>2.22.2</version>
		</plugin>
				
	</plugins>
	</build>
	
 	Then the program prints <Result>
 	Examples:
 	| Number 	| Result |
 	| 2				| 2			 |
 	| 3				| Fizz	 |
 	| 6				| Fizz	 |
 	| 5				| Buzz	 |
 	| 10			| Buzz	 |
 	| 15			| FizzBuzz	 |
 	
 	
 	Scenario: FizzBuzz sequence
 		Given the user wants a sequence of 15 numbers
 		When the user clicked the FizzBuzzSequence button
 		Then the program printed:
 		| 1    		 |
 		| 2 	 		 |
 		| Fizz 		 |
 		| 4		 		 |
 		| Buzz 		 |
 		| Fizz 		 |
 		| 7		 		 |
 		| 8    		 |
 		| Fizz 		 |
 		| Buzz 		 |
 		|	11	 		 |
 		|	Fizz 		 |
 		| 13	 		 |
 		| 14	 		 |
 		| FizzBuzz |
 		And validate background flag
 		
 		Scenario: Table Advanced
 			Then the table must be converted:
 			|Test | Address | test@test | 57 |
 			|Tes2 | Addres2 | test2@test | 41 |
 			|Tes3 | Address | test3@test | 26 | 
 		And validate background flag
 		
```

# dio
