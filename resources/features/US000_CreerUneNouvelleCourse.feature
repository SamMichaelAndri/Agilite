@tag
Feature: US00_Creer Une Nouvelle Course
 En tant que participant 
Je veux pouvoir créer une nouvelle course, avec lieu de la course, nombre de tour.
Afin que les participants puisse accéder aux informations de la course et y participer.

  Scenario Outline: Création automatique de la liste des participants
    Given  la création d’une nouvelle course 
    And some other precondition
    When le participant la valide
    Then la liste des participants, vide, est créée automatiquement 

	Examples:
		| lieu1   | tour1 | listeParticipants |
		| Paris   | 4     | {} 		            |
		
	Scenario Outline: Refus de nombre de tours négatif ou nul
		Given la création d’une nouvelle course 
		When le participant la valide
		Then le système refuse avec le <messageErreur>
	Examples:
		| lieu1   | tour1 	| messageErreur    |
		| Paris   | -4      | nb tours négatif |
		| Lyon  	| 0       | nb tours nul     |
		
	Scenario Outline: Refus de lieu vide
		Given la création d’une nouvelle course 
		When le participant la valide
		Then le système refuse avec le <messageErreur>
	Examples:
		| lieu1   | tour1 | messageErreur    |
		|  «  »   | 4     | lieu non défini  |


 