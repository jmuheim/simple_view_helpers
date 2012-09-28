require 'spec_helper'
 
describe 'general/fieldset.html.erb' do
  before do
    render template: "general/fieldset"
  end
  
  subject { rendered }
  
  it 'should display the title' do
    should have_selector('h1')
    should have_content('General#fieldset')
  end
    
  it 'should display the paragraph' do
    should have_selector('p')
    should have_content('Find me in app/views/general/fieldset.html.erb')
  end
  
  it 'should display the fieldset without a legend' do
    should     have_selector('fieldset')
    should_not have_selector('fieldset > legend')
    should     have_content('...with a pretty little block in it! :-)')
  end
end