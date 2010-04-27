require 'spec_helper'

describe Setlist do
  subject do
    Factory.build(:setlist)
  end

  it "should create a valid instance from factory" do
    subject.should be_valid
  end

  it "should be invalid without a show" do
  end

  describe "#show=" do
    let(:show) { stub(:id => 1, :to_i => 1) }

    context "when passed an integer" do
      it "sets the show_id" do
        subject.show = 1
        subject.show_id.should == show.id
      end
    end

    context "when passed a string" do
      it "sets the show_id" do
        subject.show = "1"
        subject.show_id.should == 1
      end
    end

    context "when passed a show" do
      it "sets the show_id" do
        subject.show = show
        subject.show_id.should == show.id
      end
    end
  end
end
