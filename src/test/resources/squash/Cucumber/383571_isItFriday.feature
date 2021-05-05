# Automation priority: null
# Test case importance: Low
# language: en
Feature: isItFriday

	Scenario Outline: isItFriday
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@KO
		Examples:
		| answer |
		| "YES" |

		@OK
		Examples:
		| answer |
		| "NO" |