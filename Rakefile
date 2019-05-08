require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

#@!method init_host_google
#init google host.
def init_host_google
  if ENV['host_google'].equal? nil
    ENV['host_google'] = 'https://www.google.com'
  end
end

desc 'Run google search'
task :google_search_test  do
  init_host_google
  ruby "-S bundle exec cucumber features/tests/dummy.feature"
end