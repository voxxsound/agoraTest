require 'spec_helper'

describe Party do
  
  before(:each) do
    @valid_attributes = {
      :id  => "37",
      :first_name => "David",
      :last_name => "Hanson",
      :address => "1 Some St.",
      :city  => "Some City",
      :state => "NY",
      :zip => "11223",
      :phone => "(123) 456-7890",
      :email => "dhh@37signals.com"
    }
  end
    
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:zip) }
  it { should validate_presence_of(:email) }
    
  describe "email address validation" do
    it "should throw an error when the address is invalid" do
      party = Party.new(@valid_attributes.merge(:email  => "bad"))
      party.should be_invalid
    end
    
    it "should be valid when the address is valid" do
      party = Party.new(@valid_attributes.merge(:email  => "voxxsound@gmail.com"))
      party.should be_valid
    end
  end
    
  end
  it "should create a new instance given valid attributes" do
    Party.create!(@valid_attributes)
  end
end
