require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

#@!method init_host_name
#init host name, in dummy feature the host is google.
def init_host_name
  if ENV['host'].equal? nil
    ENV['host'] = 'http://test-emploitic.com'
  end
end

desc 'Run add personnal info test'
task :apply_for_job_test  do
  init_host_name
  ruby "-S bundle exec cucumber features/tests/apply_for_job.feature"
end
