#e2e-tests/features/support/helpers/home/home_helpers.rb
# PersonnalInfoHelpers Helper to interact with CV page

module PersonnalInfoHelpers

  #@method signin
  #signin into emploitic.
  def self.save_infos
    UtilsHelpers.find_all(".save-form-section button").at(0).click
    TimeHelpers.wait_for_ajax(10)
  end

  #@method display_my_account
  #go to mon compte page.
  def self.enter_infos
    TimeHelpers.wait_for_ajax(10)
    UtilsHelpers.find_all(".cv-edit-button").at(0).click
    set_gender()
    set_birthday()
    set_phone_number()
    set_region()
    save_infos()
  end

  def self.set_gender
    UtilsHelpers.find_all("#user-gender-id-1  span.shape").at(0).click
    TimeHelpers.wait_for_ajax(10)
  end

  def self.set_phone_number
    UtilsHelpers.find_all("#cv-phones .e-input-wrapper input").at(0).set("0551234567")
    TimeHelpers.wait_for_ajax(10)
    UtilsHelpers.find_all("#cv-phones a.add-button").at(0).click
    TimeHelpers.wait_for_ajax(20)
  end

  def self.set_region
    UtilsHelpers.find_all("#user-location-id input").at(0).set("Alger")
    UtilsHelpers.find_all("#user-location-id ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)
  end

  def self.set_birthday
    UtilsHelpers.find_all("input[placeholder=Jour]").at(0).set(10)
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("input[placeholder=Mois]").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("#birthday-month ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("input[placeholder=Année]").at(0).set(1996)
    TimeHelpers.wait_for_ajax(10)
  end

end
World(PersonnalInfoHelpers)
