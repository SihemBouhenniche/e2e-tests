#e2e-tests/features/support/prism_pages/base/dashboard/admin_dashboard_pages.rb
# Google home page object: load elements of google home page.
class IdentificationPage < SitePrism::Page
  set_url '/identification'
  element :email_input, '#text-field-5-ww input.span12'
  element :password_input, '#password-field-5-ww input.span12'
  element :connexion_button, 'div.spaced:nth-child(7) > button:nth-child(1)'
  element :my_account_button, '.item-109 > a:nth-child(1)'
end
