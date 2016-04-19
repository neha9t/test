Feature: Test Login in B2C App

User should be able to login, log out via Facebook/ Google and normal sign in
User should be able to sign up successfully when using first time


Scenario Outline: Checking success login of new user
	Scenario: Log In
	    When User requests for signing in on <platform>
	    Then "details" are fetched with the <status>

Examples:  validate on different platforms
	| platform | status |
	| "ANDROID"| "200"	|