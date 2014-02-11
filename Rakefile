require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new do |task|
  task.rspec_opts = [ "-c", "-f progress", "-r ./spec/spec_helper.rb" ]
  task.pattern    = 'spec/**/*_spec.rb'
end

namespace :start do
  desc "start hpac app"
  task :dev do
    puts `./start-dev.sh`
  end

  task :prod do
    puts `./start.sh`
  end
end
namespace :monitor do
  desc "observer things"
  task :procs do
    puts `ps aux | grep unicorn.rb`
  end
end
