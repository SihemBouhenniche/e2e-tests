#e2e-tests/features/support/prism_pages/base/dashboard/admin_dashboard_pages.rb
# Google home page object: load elements of google home page.
class GoogleHomePage < SitePrism::Page
  set_url 'https://www.google.com'
  element :keyword_input, 'input.gLFyf'
  element :submit_button, 'input[name=btnK]'
  element :first_suggestion, '.suggestions-inner-container .sbl1'
end
