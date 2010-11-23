require 'spec_helper'

describe "/parties/show.html.erb" do
  include PartiesHelper
  before(:each) do
    assigns[:party] = @party = stub_model(Party,
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :address => "value for address",
      :phone => "value for phone",
      :email => "value for email"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ first_name/)
    response.should have_text(/value\ for\ last_name/)
    response.should have_text(/value\ for\ address/)
    response.should have_text(/value\ for\ phone/)
    response.should have_text(/value\ for\ email/)
  end
end
