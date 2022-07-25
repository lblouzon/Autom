# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_23718_SETUP}	Get Variable Value	${TEST 23718 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_23718_SETUP is not None	${__TEST_23718_SETUP}

Test Teardown
	${__TEST_23718_TEARDOWN}	Get Variable Value	${TEST 23718 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_23718_TEARDOWN is not None	${__TEST_23718_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
Cas de test BDD
	[Setup]	Test Setup
	[Teardown]	Test Teardown