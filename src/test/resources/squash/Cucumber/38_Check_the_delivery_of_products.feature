# Automation priority: null
# Test case importance: Low
# language: en
Feature: Check the delivery of products

	Scenario Outline: Check the delivery of products
		Given the machine is operating
		And my account contains at least <price>
		When I select <product>
		Then the machine delivers me a <product> and my account is charged <price>

		@Cappuccino
		Examples:
		| price | product |
		| 0.80 | "Cappuccino" |

		@Espresso
		Examples:
		| price | product |
		| 0.40 | "Espresso" |

		@Lungo
		Examples:
		| price | product |
		| 0.50 | "Lungo" |