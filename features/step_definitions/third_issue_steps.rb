#shared
When /^I click on Mes offres sauvegardées button$/ do
  IdentificationHelpers.click_saved_offers_button
end

#first scenario
Then /^I click on offres emploi button$/ do
  IdentificationHelpers.click_offers_button
end

Then(/^I click on first offer$/) do
  IdentificationHelpers.click_first_offer
end

Then(/^I click on save button$/) do
  IdentificationHelpers.click_save_button
end

#second scenario
Then(/^I click on view offer$/) do
  IdentificationHelpers.click_view_offer
end


#third scenario
Then(/^I click on delete offer$/) do
  IdentificationHelpers.delete_offer
end
