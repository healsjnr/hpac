require './lib/controllers/hpac_app.rb'
require 'sinatra/activerecord/rake'

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
