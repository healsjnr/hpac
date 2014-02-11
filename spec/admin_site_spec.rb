require 'spec_helper'
require 'lib/helpers/hpac_helpers.rb'
require 'lib/helpers/admin_helpers.rb'
require 'lib/controllers/admin_controller.rb'


describe 'admin site tests' do
  it 'should load the amdin home page' do
    visit '/admin'
    page.should have_content('HPAC Administration')
  end
end
