Feature: Test Home Page API's

User should be able to view results of api when landing on home page of the B2C App

 Scenario: User should be able to have results from 'near-by' doctors's -consultation api
    When User requests the near-by doctors's consultation  api
    Then Response is received with status-code
 
Scenario: User should be able to have results from 'near-by' hospital's consultation api
    When User requests the near-by hospital's consultation api
    Then Response is received with status-code

Scenario: User should be able to have results from 'near-by' hospital's surgery api
    When User requests the near-by hospital's surgery api
    Then Response is received with status-code

Scenario: User should be able to have results from 'near-by' doctor's surgery  api
    When User requests the near-by doctor's surgery api
    Then Response is received with status-code

Scenario: User should be able to have results from 'near-by' hospital diagnostic  api
    When User requests the near-by hospital diagnostic api
    Then Response is received with status-code

Scenario: User should be able to have results from diagnostic-test  api
    When User requests the diagnostic-test api
    Then Response is received with status-code

Scenario: User should be able to have results from suggestions-specialities api
    When User requests the suggestions-specialities api
    Then Response is received with status-code

Scenario: User should be able to have results from suggestions-ailments api
    When User requests the suggestions-ailments api
    Then Response is received with status-code