Feature: Test Navigation Drawer Options on App

User should be able to view various options under drawer api when opened the navigation icon.

 	Scenario: User should be able to open and view the Help Page
    When User requests for Help api
    Then Response is received with status-code for Help Api.

 	Scenario: User should be able to open and view My Reviews Unapproved Page
 		When User requests for My Reviews Unapproved Api
 		Then Response is received with status-code for My Reviews Unapproved Api

  Scenario: User should be able to open and view My Reviews Approved Page
 		When User requests for My Reviews Approved Api
 		Then Response is received with status-code for My Reviews Approved Api	
 
 	Scenario: User should be able to send response via Contact Us Page
 		When User requests for Contact Us Api
 		Then Response is received with status-code for Contact Us Api

 	Scenario: User should be able to send response via T and C Page
 		When User requests for T and C Api
 		Then Response is received with status-code for T and C Api

 	Scenario: User should be able to send view Privacy Policy Page
 		When User requests for Privacy Policy Api
 		Then Response is received with status-code for Privacy Policy Api
