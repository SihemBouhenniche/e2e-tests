When /^I click on add skill button$/ do
  IdentificationHelpers.click_add_skill
end

Then(/^I can type "(.+)" And "(.+)" And "(.+)" in skill field$/) do |value1,value2,value3|
  IdentificationHelpers.fill_skill(value1)
  IdentificationHelpers.fill_skill(value2)
  IdentificationHelpers.fill_skill(value3)
end
