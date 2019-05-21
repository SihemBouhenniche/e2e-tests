#e2e-tests/features/support/helpers/base/navigation/navigate_helpers.rb
# Navigation helpers to browse pages.

module NavigationHelpers

  #@method load_google_home
  #load google homepage.
  # noinspection RubyArgCount
  def self.load_google_home
    HostHelpers.set_host
    google_home_page = GoogleHomePage.new
    google_home_page.load
  end

end
World(NavigationHelpers)
