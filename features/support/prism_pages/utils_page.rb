#e2e-tests/features/support/prism_pages/utils.rb
# Utils page helpers
class UtilsPage < SitePrism::Page

  #@method find_first(selector)
  #find first selector
  def find_first(selector)
    page.find(:css, selector, :match => :first)
  end

  #@method find_all(selector)
  #find all selector
  def find_all(selector)
    page.all(:css, selector)
  end
end