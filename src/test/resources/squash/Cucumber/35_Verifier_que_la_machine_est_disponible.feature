# Automation priority: null
# Test case importance: Low
# language: en
Feature: Vérifier que la machine est disponible

	Scenario: Vérifier que la machine est disponible
		Given la machine est en marche
		When je passe mon badge
		Then mon solde est au moins de "prix"