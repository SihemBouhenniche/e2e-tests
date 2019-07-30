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

desc 'Run add personnal info test'
task :add_personnal_info_test  do
  init_host_name
  ruby "-S bundle exec cucumber features/tests/add_personnal_info.feature"
end
