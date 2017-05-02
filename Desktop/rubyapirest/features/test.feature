Feature: I wanna use an API

Scenario Outline: Create a comment POST       
 Given I send a name "<name>", a email "<email>" and a third as "<body>"
 Then I should get a status "<status>"
 
	Examples:

	| name					| email						| body		| status |
	| Depoimento na Lava Jato | astato@santander.com.br | Os depoimentos de hoje são os últimos desta fase do processo. Agora, as defesas devem solicitar diligências complementares e, em seguida, Moro deve determinar um prazo para as alegações finais e então determinar a sentença | 200|
 
 
Scenario Outline: Delete a comment DELETE
 Given I delete the comment
 Then I should get a status "<status>"
 
	Examples:

	| status|
	|200	 |