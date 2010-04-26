require 'spec_helper'

describe Show do
  before(:each) do
    @valid_attributes = {
      :venue_id => 1,
      :date => Time.now,
      :notes => "value for notes"
    }
  end

  it "should create a new instance given valid attributes" do
    Show.create!(@valid_attributes)
  end
end
