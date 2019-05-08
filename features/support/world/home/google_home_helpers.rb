#e2e-tests/features/support/helpers/home/home_helpers.rb
# GoogleHomeHelpers Helper to interact with google home page 

module GoogleHomeHelpers

  #@method fill_keyword(value)
  #+value+: value to set
  #fill search field with value in google homepage.
  def self.fill_keyword(value)
    google_home = GoogleHomePage.new
    google_home.keyword_input.set(value)
  end

  #@method click_first_suggestion
  #click on first suggestion in google homepage searcha autocomplete.
  def self.click_first_suggestion
    google_home = GoogleHomePage.new
    google_home.first_suggestion.click
  end

  #@method submit
  #click on submit button on google homepage.
  def self.submit
    google_home = GoogleHomePage.new
    google_home.submit_button.click
  end

end
World(GoogleHomeHelpers)