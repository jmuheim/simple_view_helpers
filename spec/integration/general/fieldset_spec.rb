require 'spec_helper'

describe "general" do
  describe "fieldset" do
    before do
      visit '/general/fieldset'
    end
    
    subject { page }
    
    it "should load successfully" do
      should have_selector('h1')
      should have_content('General#fieldset')
      # You can do some crazy stuff here, like click_link('My link')...
    end
  end
end