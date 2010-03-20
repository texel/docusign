require 'spec/spec_helper'

describe Docusign::Builder::AnchorBuilder do
  describe "#initialize" do
    it "should return a new AnchorBuilder" do
      Docusign::Builder::AnchorBuilder.new.should be_an_instance_of(Docusign::Builder::AnchorBuilder)
    end
    
    describe "#build" do
      before(:each) do
        @ab = Docusign::Builder::AnchorBuilder.new
      end
      
      context "with no arguments" do
        it "should return a new Docusign::AnchorTab" do
          @ab.build.should be_an_instance_of(Docusign::AnchorTab)
        end
      end
      
      context "passing in attributes from a hash" do
        before(:each) do
          @anchor = @ab.build :x_offset => 2, :y_offset => 3, :anchor_tab_string => 'foo'
        end
        
        it "should set attributes from the passed-in hash" do
          @anchor.x_offset.should == 2
          @anchor.y_offset.should == 3
          @anchor.anchor_tab_string.should == 'foo'
        end
      end
      
      context "passing in attributes from a block" do
        before(:each) do
          @anchor = @ab.build do |a|
            a.x_offset = 2
            a.y_offset = 3
            a.anchor_tab_string = 'foo'
          end
        end
        
        it "should set attributes from the passed-in block" do
          @anchor.x_offset.should == 2
          @anchor.y_offset.should == 3
          @anchor.anchor_tab_string.should == 'foo'
        end
      end
    end
  end
end