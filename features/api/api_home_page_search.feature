Feature: Test Home Page Search API's

User should be able to view results of api when he searches the query string.

 Scenario: User should be able to have results when searched for a query
    When User requests for suggestions on consultation
    Then Response is received for search with status-code

  Scenario: User should be able to have results when searched for a query
    When User requests for searching in symptom
    Then Response is received for search with status-code

  Scenario: User should be able to have results when searched for a query
    When User requests for searching in speciality
    Then Response is received for search with status-code
	
	Scenario: User should be able to have results when searched for a query
    When User requests for searching in doctors
    Then Response is received for search with status-code
	
	Scenario: User should be able to have results when searched for a query
    When User requests for searching in hospitals
    Then Response is received for search with status-code  
	
	Scenario: User should be able to have results when searched for a query
    When User requests for searching in disease
    Then Response is received for search with status-code 