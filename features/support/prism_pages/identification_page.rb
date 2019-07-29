#e2e-tests/features/support/prism_pages/base/dashboard/admin_dashboard_pages.rb
# Google home page object: load elements of google home page.
class IdentificationPage < SitePrism::Page
  set_url 'https://www.emploitic.com/identification'
  element :email_input, '#text-field-5-ww input.span12'
  element :password_input, '#password-field-5-ww input.span12'
  element :connexion_button, 'div.spaced:nth-child(7) > button:nth-child(1)'

  element :my_account_button, '.item-109 > a:nth-child(1)'

  element :add_language_button, 'div.ember-view > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(3) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(7) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > span:nth-child(2)'
  element :language_input, 'input[placeholder="Sélectionnez une langue"]'

  element :add_skill_button, 'div.ember-view > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(3) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(6) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > span:nth-child(2)'
  element :skill_input, 'input[placeholder="Saisissez une compétence"]'

  element :saved_offers_button, '.nav-sub-menu > li:nth-child(3) > a:nth-child(1)'
  element :offers_button, '.item-110 > a:nth-child(1)'
  element :first_offer, 'li.separator-top:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > a:nth-child(1)'
  element :save_offer_button, 'section.details-job:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(2) > div:nth-child(1) > form:nth-child(1) > a:nth-child(1)'
  element :delete_offer_button, 'a.btn:nth-child(3)'
  element :first_offer_saved, 'a.btn:nth-child(1)'
end
