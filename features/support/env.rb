require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'rspec/expectations'
require 'csv'
require 'webdrivers'
require 'faker'

Capybara.default_max_wait_time = 10
Capybara.app_host = ENV['host']
Capybara.default_selector = :css
Capybara.ignore_hidden_elements = true
Webdrivers.cache_time = 86_400

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app)
end

Capybara.default_driver = :firefox
