require 'spec/spec_helper'

describe Docusign::Document do
  before(:each) do
    @d = Docusign::Document.new
  end
  
  it "should create a new document" do
    @d.should be_an_instance_of(Docusign::Document)
  end
  
  it "should respond to tabs" do
    @d.should respond_to(:tabs)
  end
  
  describe "#tabs" do
    context "with no arguments" do
      it "should return an empty tab array" do
        @d.tabs.should == Docusign::ArrayOfTab.new
      end
    end
  end
end