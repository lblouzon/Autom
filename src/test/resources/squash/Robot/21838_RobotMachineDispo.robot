# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
RobotMachineDispo
	Given la machine est en marche
	When je passe mon badge
	Then je constate que mon solde s'affiche