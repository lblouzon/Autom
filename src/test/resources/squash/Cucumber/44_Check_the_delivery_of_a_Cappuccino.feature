# Automation priority: null
# Test case importance: Low
# language: en
Feature: Check the delivery of a Cappuccino

	Scenario: Check the delivery of a Cappuccino
		Given the machine is operating
		And my account contains at least 0.80
		When I select "Cappuccino"
		Then the machine delivers me a "Cappuccino"
		And my account is charged 0.80