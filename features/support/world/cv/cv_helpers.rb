#e2e-tests/features/support/helpers/cv/cv_helpers.rb
# CvHelpers Helper to interact with job board cv page

module CvHelpers

  #@method set_skill(value)
  #+value+: language to set
  #fill skill field with given language and click on enter key.
  def self.set_skill(value)
    TimeHelpers.wait_for_ajax(10)
    UtilsHelpers.find_all(".cv-add-button").at(3).click
    TimeHelpers.wait_for_ajax(10)
    UtilsHelpers.find_all(".skills .e-input-wrapper input").at(0).set(value)
    UtilsHelpers.find_all(".cvpan2 button").at(0).click
    UtilsHelpers.find_all(".save-form-section button").at(0).click
  end

  #@method set_custom_skill
  #set custom skill
  def self.set_custom_skill
    skill = Faker::Job.key_skill
    set_skill(skill)
  end

end
World(CvHelpers)
