# Liguagem Ghearkin comentario
#@FizzBuzz

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
 	When the user clicked the FizzBuzz button
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
 		