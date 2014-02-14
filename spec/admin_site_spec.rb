require 'spec_helper'
require 'lib/helpers/hpac_helpers.rb'
require 'lib/helpers/admin_helpers.rb'
require 'lib/controllers/admin_controller.rb'


describe 'admin site tests' do

  let(:admin_path) { '/admin' }

  describe 'admin home page' do
    before { visit admin_path }

    it 'should load the amdin home page' do
      page.should have_content('HPAC Administration')
    end
  
    it 'should contain the nav header' do
      Content.count.should == 0 
      puts "pages:"
    end
  
    it 'should have no pages to edit when db is empty' do
      pending 'need to add test that checks nav hearder is empty by default'
    end

  end

  describe 'admin single page tests' do
    it 'should contain a link for each single page in the db' do
      pending 'test that adds pages to the Db and checks the nav page works'
    end
    it 'should allow you to edit pages' do
      pending 'add test to check that clicking on a page in edit mode populates the edit forms with the page data'
    end
    it 'should update pages that have been edited' do
      pending 'selecting a page and edit the text should result in the db content being updated and a redirect'
    end
    it 'should not update pages that have been cancelled' do
      pending 'add content, then cancel. ensure db is not updated'
    end
  end

  describe 'admin adding and deleting pages' do 
    it 'should update menu links when a new page is added' do
      pending 'add a new page and ensure the page is present in the nav bar'
    end
    it 'should update menu links when a page is deleted' do
      pending 'delete a page and ensure the page is no longer present in the nav bar'
    end
  end

  describe 'admin multi-content page tests' do
    it 'should allow you to edit content within a page' do
      pending 'add page with multiple content and ensure it is listed in the nav menu.' 
    end
    it 'should apply edits to pages with multiple content' do
      pending 'ensure editing content within a page updates the db and redirects to the correct page with only the content specified changed'
    end
  end

  describe 'editing content tests' do
    it 'should render content with markdown correctly' do
      pending 'add test that adds content with markdown and ensure it is added to the db correctly and rendered correctly'
    end
    it 'should escape HTML correctly' do
      pending 'add tests that included HTML tags and ensure they are escaped correctly'
    end
  end

  describe 'authentication tests' do
    it 'should not allow unauthenticated users to access admin page' do
      pending 'unauthenticated users should not be able to access the admin page'
    end
  end

end

