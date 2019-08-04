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

When /^I click on offers button$/ do
  IdentificationHelpers.display_offers
end
