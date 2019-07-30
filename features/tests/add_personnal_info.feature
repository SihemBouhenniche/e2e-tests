Feature: Dummy

  Scenario: Dummy scenario
  Given I am on emploitic identification page
  Then I can type "sihem.bouhenniche@emploitic.com" in email field
  And I can type "31090533" in password field
  Then I click on connexion button
  When I click on mon compte button
  Then I enter my personnal info
  Then I click on save button
