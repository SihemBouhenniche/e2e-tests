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

  #@method execute_js(script)
  #execute js script
  def execute_js(script)
    page.execute_script script
  end

  #@method evaluate_js(script)
  #evaluate js script and return js return object
  def evaluate_js(script)
    page.evaluate_script script
  end

  #@method expect_to_have_selector(selector)
  #check if selector in page
  def expect_to_have_selector(selector)
    page.has_selector? selector
  end
end