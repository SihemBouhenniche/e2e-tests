#e2e-tests/features/support/world/
# HostHelpers to manage hosts.

module HostHelpers

  #@!method set_host_google
  #Set host to google
  def self.set_host_google
    Capybara.app_host = ENV['host_google']
  end

end
World(HostHelpers)