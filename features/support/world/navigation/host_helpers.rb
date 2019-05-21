#e2e-tests/features/support/world/
# HostHelpers to manage hosts.

module HostHelpers

  #@!method set_host
  #Set host to defined host
  def self.set_host
    Capybara.app_host = ENV['host']
  end

end
World(HostHelpers)
