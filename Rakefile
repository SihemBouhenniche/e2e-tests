require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

#@!method init_host_name
#init host name, in dummy feature the host is google.
def init_host_name
  if ENV['host'].equal? nil
    ENV['host'] = 'https://www.emploitic.com'
  end
end


desc 'Run fill experience test'
task :fill_experience_test  do
  init_host_name
  ruby "-S bundle exec cucumber features/tests/fill_experience.feature"
end
