Feature: Test View-More of hospitals and doctors

User should be able to view more hospitals and doctors

Scenario: User should be able to have all hospitals
    When User requests for more hospitals
    Then Response is received for hospitals with status-code

Scenario: User should be able to have all doctors
    When User requests for more doctors
    Then Response is received for doctors with status-code
    