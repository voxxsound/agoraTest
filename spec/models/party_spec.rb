require 'spec_helper'

describe Party do
  before(:each) do
    @valid_attributes = {
      :first_name => "John",
      :last_name => "Daniels",
      :address => "1 Some St.",
      :city  => "Some City",
      :state => "NY",
      :zip => "11223"
      :phone => "(123) 456-7890",
      :email => "dhh@37signals.com"
    }
  end
    
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it {should validate_presence_of(:zip) }
    
  end
  it "should create a new instance given valid attributes" do
    Party.create!(@valid_attributes)
  end
end
