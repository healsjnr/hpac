require 'spec_helper'
require 'lib/helpers/website_helpers.rb'
require 'lib/controllers/website_controller.rb'

describe 'main site tests' do
  it 'should load the home page' do
    visit '/'
    page.should have_content('HPAC')
  end
end
