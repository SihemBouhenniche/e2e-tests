When(/^I click on search button$/) do
  GoogleHomeHelpers.submit
end

Then(/^I can type "(.+)" in search field$/) do |value|
  GoogleHomeHelpers.fill_keyword(value)
end

And(/^I click on first suggestion$/) do
  GoogleHomeHelpers.click_first_suggestion
end


When(/^I am on google home page$/) do
  NavigationHelpers.load_google_home
end

Then(/^I get "(.+)" in search results$/) do |value|
  expect(page).to have_content(value)
end
