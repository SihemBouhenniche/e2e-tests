Given(/^I am on anonyme offer page$/) do
  NavigationHelpers.load_anonyme_offer_page
end

Then(/^I apply for a job$/) do
  ApplyForJobHelpers.applyForJob
end
