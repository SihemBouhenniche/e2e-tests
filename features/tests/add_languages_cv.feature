Feature: Add_Languages_CV

  Scenario: Add 3 languages to my CV
   Given I am on emploitic identification page
   Then I can type "sihem.bouhenniche@emploitic.com" in email field
   Then I can type "31090533" in password field
   When I click on connexion button
   Then I should see "cv light" page
   When I click on mon compte button
   Then I should see "Mon compte" page
   When I click on add button
   Then I can type "Ara" And "Fra" And "Ang" in language field
