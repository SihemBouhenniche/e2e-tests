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

end
World(UtilsHelpers)