$:.unshift File.join(File.dirname(__FILE__), '../..')
require 'sinatra'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Sinatra::Application.environment = :test
Bundler.require :default, Sinatra::Application.environment
require 'config/environment.rb'
require 'lib/models/content.rb'
require 'lib/controllers/hpac_app.rb'

Capybara.app = HpacAppController

set :environment, :test
set :run, false
set :raise_errors, true
set :dump_errors, false 
set :show_exceptions, false
set :logging, false
