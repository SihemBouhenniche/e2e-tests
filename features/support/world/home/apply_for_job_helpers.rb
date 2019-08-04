#e2e-tests/features/support/helpers/home/home_helpers.rb
# ApplyForJobHelpers Helper to interact with CV page

module ApplyForJobHelpers

  #@method signin
  #signin into emploitic.
  def self.applyForJob
    UtilsHelpers.find_all(".apply-button a.btn-apply").at(0).click
    TimeHelpers.wait_for_ajax(10)
    fill_infos()
  end

  def self.uploadCv
    UtilsHelpers.attach_file('upload','C:\Users\nabou\Documents\cv-bouhenniche.pdf')
    TimeHelpers.wait_for_ajax(10)
  end

  def self.fill_infos
    #Je suis un(e)
    UtilsHelpers.find_all("#jform_user_gender_id-ww input").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("#jform_user_gender_id-ww ul.autocomplete li").at(1).click
    TimeHelpers.wait_for_ajax(10)

    #Nom et prenom
    UtilsHelpers.find_all("input[placeholder=Nom]").at(0).set("bouhenniche")
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("input[placeholder=Prenom]").at(0).set("sihem")
    TimeHelpers.wait_for_ajax(10)

    #email
    UtilsHelpers.find_all("input[placeholder=Email]").at(0).set("sihem@gmail.com")
    TimeHelpers.wait_for_ajax(10)

    #phone
    UtilsHelpers.find_all("input[placeholder=Téléphone]").at(0).set("0551234567")
    TimeHelpers.wait_for_ajax(10)

    #region
    set_region()

    #last post
    UtilsHelpers.find_all("#jform_expe_title-ww input").at(0).set("Ingénieur")
    TimeHelpers.wait_for_ajax(10)

    #Metier
    UtilsHelpers.find_all("input[placeholder=Métier]").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("#jform_cv_profession_id-ww ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)

    #experience
    UtilsHelpers.find_all("#jform_cv_total_experience_id-ww input").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("#jform_cv_total_experience_id-ww ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)

    #study
    UtilsHelpers.find_all("#jform_cv_education_level_id-ww input").at(0).click
    TimeHelpers.wait_for_ajax(10)

    UtilsHelpers.find_all("#jform_cv_education_level_id-ww ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)

    #cv File
    uploadCv()

    UtilsHelpers.find_all("#apply-button").at(0).click
    TimeHelpers.wait_for_ajax(50)
  end

  def self.set_region
    UtilsHelpers.find_all("#jform_user_location-ww input").at(0).set("Alg")
    UtilsHelpers.find_all("#jform_user_location-ww ul.autocomplete li").at(0).click
    TimeHelpers.wait_for_ajax(10)
  end


end
World(ApplyForJobHelpers)
