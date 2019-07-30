Then(/^I enter my personnal info$/) do
  PersonnalInfoHelpers.enter_infos
end

Then(/^I click on save button$/) do
  PersonnalInfoHelpers.save_infos
end
