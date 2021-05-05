# Automation priority: null
# Test case importance: High
# language: en
Feature: CT_BDD

	Scenario Outline: CT_BDD
		Given today is sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@ko
		Examples:
		| answer |
		| "yep" |

		@ok
		Examples:
		| answer |
		| "nope" |