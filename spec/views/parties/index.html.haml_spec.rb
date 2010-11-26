require 'spec_helper'

describe "/parties/index.html.haml" do
  include PartiesHelper

  before(:each) do
    assigns[:parties] = [
      stub_model(Party,
        :first_name => "value for first_name",
        :last_name => "value for last_name",
        :address => "value for address",
        :phone => "value for phone",
        :email => "value for email"
      ),
      stub_model(Party,
        :first_name => "value for first_name",
        :last_name => "value for last_name",
        :address => "value for address",
        :phone => "value for phone",
        :email => "value for email"
      )
    ]
  end

  it "renders a list of parties" do
    render
    response.should have_tag("tr>td", "value for first_name".to_s, 2)
    response.should have_tag("tr>td", "value for last_name".to_s, 2)
    response.should have_tag("tr>td", "value for address".to_s, 2)
    response.should have_tag("tr>td", "value for phone".to_s, 2)
    response.should have_tag("tr>td", "value for email".to_s, 2)
  end
end
