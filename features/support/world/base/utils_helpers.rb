#e2e-tests/features/support/helpers/base/utils_helpers.rb
# UtilsHelpers Helper use capybara helpers in cucumber world modules

module UtilsHelpers

  #@method find_first(selector)
  #find first selector
  def self.find_first(selector)
    utils = UtilsPage.new
    utils.find_first(selector)
  end

  #@method find_all(selector)
  #find all selector
  def self.find_all(selector)
    utils = UtilsPage.new
    utils.find_all(selector)
  end

  #@method find_all(selector)
  #find all selector
  def self.find_by_title(title)
    utils = UtilsPage.new
    utils.find_by_title(title)
  end

  #@method find_all(selector)
  #find all selector
  def self.attach_file(name, fileUrl)
    utils = UtilsPage.new
    utils.attach_file(name, fileUrl)
  end


  #@method execute_js(script)
  #execute js script
  def self.execute_js(script)
    utils = UtilsPage.new
    utils.execute_js script
  end

  #@method evaluate_js(script)
  #evaluate js script and return js return object
  def self.evaluate_js(script)
    utils = UtilsPage.new
    utils.evaluate_js script
  end

  #@method expect_to_have_selector(selector)
  #check if selector in page
  def self.expect_to_have_selector(selector)
    utils = UtilsPage.new
    utils.has_selector? selector
  end

end
World(UtilsHelpers)
