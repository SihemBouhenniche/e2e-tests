Feature: Fill experience

  Scenario: Fill experience
   Given I am on emploitic identification page
   Then I can type "sihem.bouhenniche@emploitic.com" in email field
   Then I can type "31090533" in password field
   When I click on connexion button
   When I click on mon compte button
   Then I fill a new experience
