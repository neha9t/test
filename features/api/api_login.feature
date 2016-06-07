Feature: Test Login in B2C App

User should be able to login, log out via Facebook/ Google and normal sign in
User should be able to sign in
	Scenario Outline: Login Functionality negative test cases
	    Given User is on android platform
	    When User requests with "username" and "password" for signing into the app
	    Then Appropriate Response is received with status-code
		Examples:
		|username|password|
		|kapil@w.com|kapil111|
		|kapil@pstakecare.com|kapil1|
		| | |
		| |kapil1234|
		|kapil@pstakecare.com|	|