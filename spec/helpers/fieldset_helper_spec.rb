require 'spec_helper'

describe FieldsetHelper do
  describe "#fieldset" do
    context "with caption" do
      let(:html) { helper.fieldset('This is the caption') { 'This is the <em>block</em>!'.html_safe } }
      subject { html }
      
      it "should generate a fieldset with a legend" do
        should have_selector('fieldset > legend')
        should have_selector('fieldset > em')
        should have_content('This is the block!')
      end
    end
    
    context "without caption" do
      let(:html) { helper.fieldset { 'This is the <em>block</em>!'.html_safe } }
      subject { html }
      
      it "should generate a fieldset without a legend" do
        should_not have_selector('fieldset > legend')
        should     have_selector('fieldset > em')
        should     have_content('This is the block!')
      end
    end
  end
end
