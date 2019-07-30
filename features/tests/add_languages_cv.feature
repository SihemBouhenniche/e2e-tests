Feature: Add_languages_CV

  Scenario: Add 3 languages to my CV
   Given I am on emploitic identification page
   Then I can type "fm_bourouais@esi.dz" in email field
   Then I can type "123456789" in password field
   When I click on connexion button
   When I click on mon compte button
   Then I should see "Mon compte" page
   Then I can add "Arabe" language
   And I can wait "2" seconds
   And I can add "Chinois" language
   And I can wait "2" seconds
   And I can add "Français" language
   And I can wait "2" seconds
