@test1

Feature: US_002 Ajouter participants à une course
En tant que participant 
Je veux pouvoir ajouter d’autres participants à une course
Afin que cela soit plus fun.

	Scenario Outline: Refus de participant ou course inexistante
	Given l’ajout d’un participant à une course
	When le participant la valide
	Then le système refuse avec le <messageErreur>
		Examples:
		| course1 	 | particip1  | messageErreur           |
		|	NULL       | Raouf      | course inexistante      |
		| Lyon       | NULL       | participant inexistant  |