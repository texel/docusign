require 'spec/spec_helper'

describe Docusign::Builder::TabBuilder do
  describe "#initialize" do
    before(:each) do
      @tb = Docusign::Builder::TabBuilder.new 'document', 'recipient'
    end
    
    it "should return an instance of itself" do
      @tb.should be_an_instance_of(Docusign::Builder::TabBuilder)
    end
    
    it "should set the document" do
      @tb.document.should == 'document'
    end
    
    it "should set the recipient if passed in" do
      @tb.recipient.should == 'recipient'
    end
  end
  
  describe "#build" do
    before(:each) do
      @tb = Docusign::Builder::TabBuilder.new 'document', 'recipient'
    end
    
    it "should return a new tab with no arguments" do
      @tb.build.should be_an_instance_of(Docusign::Tab)
    end
    
    it "should set attributes passed in via options" do
      tab = @tb.build :name => 'foo', :value => 'bar'
      
      tab.name.should == 'foo'
      tab.value.should == 'bar'
    end
    
    it "should set attributes via block" do
      tab = @tb.build do |t|
        t.name  'foo'
        t.value 'bar'
      end
      
      tab.name.should == 'foo'
      tab.value.should == 'bar'
    end
  end
  
  Docusign::Builder::TabBuilder::ATTRIBUTES.each do |attribute|
    it "should set the tab's #{attribute}" do
      @tb = Docusign::Builder::TabBuilder.new 'document'
      
      @tb.tab = Docusign::Tab.new
      @tb.send(attribute.underscore, 'value')
      @tb.tab.send(attribute).should == 'value'
    end
  end

end