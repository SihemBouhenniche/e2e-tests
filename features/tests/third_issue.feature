Feature: Third issue which includes 3 scenarios

  Background:
    Given I am on emploitic identification page
    Then I can type "sihem.bouhenniche@emploitic.com" in email field
    Then I can type "31090533" in password field
    When I click on connexion button

  Scenario: save offer
    When I click on offres emploi button
    Then I click on first offer
    Then I click on save button

  Scenario: Access an offer from the saved offer page
    When I click on mon compte button
    Then I click on Mes offres sauvegardées button
    Then I click on view offer
    Then I am on offer page

  Scenario: Delete a saved offer
    When I click on mon compte button
    Then I click on Mes offres sauvegardées button
    Then I click on delete offer
