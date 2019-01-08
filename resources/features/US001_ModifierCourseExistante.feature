@test1
Feature: US_001 Modifier course existante
En tant que participant 
Je veux pouvoir modifier les caractéristiques d’une course, à savoir son lieu et son nombre de tours
Afin de s’assurer de la possibilité de mise à jour d’une course.

	Scenario Outline: Refus de nombre de tours négatif ou nul
		Given la modification d’une course existante
		When le participant la valide
		Then le système refuse avec le <messageErreur>
	Examples:
		| lieu1 | tour1 | messageErreur    |
		| Paris | -4    | nb tours négatif |
		| Lyon  | 0     | nb tours nul     |
		
	Scenario Outline: Refus de lieu vide
		Given la modification d’une course existante
		When le participant la valide
		Then le système refuse avec le <messageErreur>
	Examples:
		| lieu1   | tour1 | messageErreur    |
		|  «  »   | 4     | lieu non défini  |