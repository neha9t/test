Feature: Test Summary pages of a hospital and doctor and D2H and H2D

User should be able to check the summary for the Doctor and Hospital

Scenario: User should be able to view the summary of A Hospital
    When User requests for summary of a hospital
    Then Response is received hospital summary with status-code

Scenario: User should be able to view the summary of A Doctor
    When User requests for summary of a Doctor
    Then Response is received doctor summary with status-code

Scenario: User should be able to view the summary of a D2H
    When User requests for summary of a Doctor-to-Hospital page
    Then Response is received doctor-to-hospital summary with status-code

Scenario: User should be able to view the summary of a H2D
    When User requests for summary of a Hospital-to-Doctor Page
    Then Response is received for hospital-to-doctor with status-code
