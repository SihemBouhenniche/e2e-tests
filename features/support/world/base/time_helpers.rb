#/Users/az/RubymineProjects/automated-tests/features/support/helpers/emploitic
# helper to wait dynamically.
module TimeHelpers

  #@!method finished_all_ajax_requests?
  #checks if all ajax request are finished
  def self.finished_all_ajax_requests?
    UtilsHelpers.evaluate_js('jQuery.active').zero?
  end

  #@!method wait_for_ajax(wait_time)
  #+wait_time+ : wait time
  #wait for ajax for defined wait time.
  def self.wait_for_ajax(wait_time)
    Timeout.timeout(wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  #@!method wait_for_dom(selector)
  #+selector+ : selector of element
  #wait for element to load in dom
  # timeout = Capybara.default_wait_time
  def self.wait_for_dom(selector)
    Timeout.timeout(Capybara.default_max_wait_time) do
      UtilsHelpers.expect_to_have_selector(selector)
    end
  end

end

World(TimeHelpers)
