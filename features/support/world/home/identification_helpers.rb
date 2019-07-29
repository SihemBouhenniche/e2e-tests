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

  #@method click_add_language
  #go to mon compte page.
  def self.click_add_language
    identification_page = IdentificationPage.new
    identification_page.add_language_button.click
  end

  #@method click_add_skill
  #go to mon compte page.
  def self.click_add_skill
    identification_page = IdentificationPage.new
    identification_page.add_skill_button.click
  end

  #@method fill_language(value)
  #+value+: language to set
  #fill language field with given language and click on enter key.
  def self.fill_language(value)
    identification_page = IdentificationPage.new
    identification_page.language_input.set(value)
    identification_page.language_input.send_keys "\n"
    identification_page.language_input.send_keys "\n"
  end

  #@method fill_skill(value)
  #+value+: skill to set
  #fill skill field with given skill and click on enter key.
  def self.fill_skill(value)
    identification_page = IdentificationPage.new
    identification_page.skill_input.set(value)
    identification_page.skill_input.send_keys :enter
    identification_page.skill_input.send_keys "\n"
  end


  #@method click_saved_offers_button
  #go to mon compte page.
  def self.click_saved_offers_button
    identification_page = IdentificationPage.new
    identification_page.saved_offers_button.click
  end

  #@method click_offers_button
  #go to mon compte page.
  def self.click_offers_button
    identification_page = IdentificationPage.new
    identification_page.offers_button.click
  end

  #@method click_first_offer
  #go to mon compte page.
  def self.click_first_offer
    identification_page = IdentificationPage.new
    identification_page.first_offer.click
  end

  #@method click_save_button
  #go to mon compte page.
  def self.click_save_button
    identification_page = IdentificationPage.new
    identification_page.save_offer_button.click
  end

  #@method delete_offer
  #go to mon compte page.
  def self.delete_offer
    identification_page = IdentificationPage.new
    identification_page.delete_offer_button.click
  end

  #@method delete_offer
  #go to mon compte page.
  def self.click_view_offer
    identification_page = IdentificationPage.new
    identification_page.first_offer_saved.click
  end
end
World(IdentificationHelpers)
