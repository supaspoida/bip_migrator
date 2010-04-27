require 'spec_helper'

describe Show do
  subject { Factory.build(:show) }

  it "should create a valid instance from factory" do
    subject.should be_valid
  end

  describe "#setlists" do

    it "returns a criteria object" do
      subject.setlists.should be_a_kind_of(Mongoid::Criteria)
    end

  end

  describe "#add_setlist" do
    let(:setlist) { Factory(:setlist) }

    it "associates the setlist" do
      subject.add_setlist(setlist)
      subject.setlists.should == [setlist]
    end

  end

  describe "#to_i" do

    context "when show is a new record" do

      it "returns nil" do
        subject.to_i.should == nil
      end

    end

    context "when show is saved" do
      before { subject.save }

      it "returns the id of the show" do
        subject.to_i.should == subject.id
      end

      it "returns an integer" do
        subject.to_i.should be_a_kind_of(Integer)
      end

    end
  end

end
