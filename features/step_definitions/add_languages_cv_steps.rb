Given(/^I am on emploitic identification page$/) do
  NavigationHelpers.load_identification_page
end

Then(/^I can type "(.+)" in email field$/) do |value|
  IdentificationHelpers.fill_email(value)
end

Then(/^I can type "(.+)" in password field$/) do |value|
  IdentificationHelpers.fill_password(value)
end

When(/^I click on connexion button$/) do
  IdentificationHelpers.signin
end

Then /^I should see "(.+)" page$/ do |value|
  expect(page).to have_title(value)
end

When /^I click on mon compte button$/ do
  IdentificationHelpers.display_my_account
end

When /^I click on add button$/ do
  IdentificationHelpers.click_add_language
end

Then(/^I can type "(.+)" And "(.+)" And "(.+)" in language field$/) do |value1,value2,value3|
  
  IdentificationHelpers.fill_language(value1)
  IdentificationHelpers.fill_language(value2)
  IdentificationHelpers.fill_language(value3)
end
