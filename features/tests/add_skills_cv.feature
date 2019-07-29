Feature: Add_Skills_CV

  Scenario: Add 3 skills to my CV
   Given I am on emploitic identification page
   Then I can type "fm_bourouais@esi.dz" in email field
   Then I can type "123456789" in password field
   When I click on connexion button
   When I click on mon compte button
   Then I should see "Mon compte" page
   Then I can add a skill
   And I can add a skill
   And I can add a skill