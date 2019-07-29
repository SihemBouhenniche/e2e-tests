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
  element :skill_input, 'input[placeholder="Saisissez une compétence"]'
  element:btn_add_skill , 'div.ember-view > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(3) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(6) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1) > span:nth-child(2)'
  element :add_skill_button,'div.ember-view > div:nth-child(1) > div:nth-child(2) > section:nth-child(1) > div:nth-child(3) > div:nth-child(1) > ul:nth-child(1) > li:nth-child(6) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1)'
end


