require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe Docusign::Builder::TabBuilder do
  def init_tab_builder
    @document = stub(:id => 1)
    @recipient = stub(:id => 1)
    @tb = Docusign::Builder::TabBuilder.new @document, @recipient
  end
  
  describe "#initialize" do
    before(:each) do
      init_tab_builder
    end
    
    it "should return an instance of itself" do
      @tb.should be_an_instance_of(Docusign::Builder::TabBuilder)
    end
    
    it "should set the document" do
      @tb.document.should == @document
    end
    
    it "should set the recipient if passed in" do
      @tb.recipient.should == @recipient
    end
  end
  
  describe "#build" do
    before(:each) do
      init_tab_builder
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
        t.name  = 'foo'
        t.value = 'bar'
      end
      
      tab.name.should == 'foo'
      tab.value.should == 'bar'
    end
    
    it "should set the document and recipient" do
      tab = @tb.build
      tab.document_id.should == @document.id
      tab.recipient_id.should == @recipient.id
    end
    
    context "overriding document and recipient" do
      before(:each) do
        @tab = @tb.build :document_id => 3, :recipient_id => 2
      end
      
      it "should not set a default document" do
        @tab.document_id.should == 3
      end
      
      it "should not set a default recipient" do
        @tab.recipient_id.should == 2
      end
    end
  end
end