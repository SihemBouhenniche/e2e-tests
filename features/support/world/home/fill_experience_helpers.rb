#e2e-tests/features/support/helpers/home/home_helpers.rb
# GoogleHomeHelpers Helper to interact with google home page

module FillExperienceHelpers

  def self.save_experience
    UtilsHelpers.find_all(".save-form-section button").at(0).click
    TimeHelpers.wait_for_ajax(10)
  end

  def self.fill_experience
    TimeHelpers.wait_for_ajax(10)
    UtilsHelpers.find_all(".cv-add-button").at(0).click
      set_post_title()
      set_start_date()
      set_end_date()
      set_factory_name()
      set_description()
      save_experience()
    end

    def self.set_post_title
      UtilsHelpers.find_all("#expe-title  input.span12").at(0).set("Ingénieur génie logiciel")
      TimeHelpers.wait_for_ajax(10)
    end

    def self.set_end_date
      UtilsHelpers.find_all("input[placeholder=Année]").at(1).set("2019")
      TimeHelpers.wait_for_ajax(10)

      UtilsHelpers.find_all("#expe-end-month input").at(0).click
      TimeHelpers.wait_for_ajax(10)

      UtilsHelpers.find_all("#expe-end-month ul.autocomplete li").at(0).click
      TimeHelpers.wait_for_ajax(10)
    end

    def self.set_start_date
      UtilsHelpers.find_all("input[placeholder=Année]").at(0).set("2018")
      TimeHelpers.wait_for_ajax(10)

      UtilsHelpers.find_all("#expe-start-month input").at(0).click
      TimeHelpers.wait_for_ajax(10)

      UtilsHelpers.find_all("#expe-start-month ul.autocomplete li").at(0).click
      TimeHelpers.wait_for_ajax(10)
    end

    def self.set_factory_name
      UtilsHelpers.find_all("#expe-company .e-input-wrapper input").at(0).set("emploi")
      UtilsHelpers.find_all("#expe-company ul.autocomplete li").at(0).click
      TimeHelpers.wait_for_ajax(10)
    end

    def self.set_description
      UtilsHelpers.find_all("#expe-description").at(0).set("emploitic une entreprise pour placement des employés")
      TimeHelpers.wait_for_ajax(10)
    end

end
World(FillExperienceHelpers)
