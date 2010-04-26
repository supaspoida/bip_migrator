require 'spec_helper'

describe Show do
  subject do
    Factory.build(:show)
  end


  it "should create a valid instance from factory" do
    subject.should be_valid
  end

end
