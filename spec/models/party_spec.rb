require 'spec_helper'

describe Party do
  before(:each) do
    @valid_attributes = {
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :address => "value for address",
      :phone => "value for phone",
      :email => "value for email"
    }
  end

  it "should create a new instance given valid attributes" do
    Party.create!(@valid_attributes)
  end
end
