When /^I click on add language button$/ do
  IdentificationHelpers.click_add_language
end

Then(/^I can type "(.+)" And "(.+)" And "(.+)" in language field$/) do |value1,value2,value3|
  IdentificationHelpers.fill_language(value1)
  IdentificationHelpers.fill_language(value2)
  IdentificationHelpers.fill_language(value3)
end
