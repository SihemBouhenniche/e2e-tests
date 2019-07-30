#e2e-tests/features/support/helpers/home/home_helpers.rb
# GoogleHomeHelpers Helper to interact with google home page

module IdentificationHelpers

  #@method fill_email(value)
  #+value+: email to set
  #fill email field with given email in emploitic identification page.
  def self.fill_email(value)
    identification_page = IdentificationPage.new
    identification_page.email_input.set(value)
  end

  #@method fill_password(value)
  #+value+: password to set
  #fill password field with given password in emploitic identification page.
  def self.fill_password(value)
    identification_page = IdentificationPage.new
    identification_page.password_input.set(value)
  end

  #@method signin
  #signin into emploitic.
  def self.signin
    identification_page = IdentificationPage.new
    identification_page.connexion_button.click
  end

  #@method display_my_account
  #go to mon compte page.
  def self.display_my_account
    identification_page = IdentificationPage.new
    identification_page.my_account_button.click
  end
end
World(IdentificationHelpers)
