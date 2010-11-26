require 'spec_helper'

describe "/parties/new.html.haml" do
  include PartiesHelper

  before(:each) do
    assigns[:party] = stub_model(Party,
      :new_record? => true,
      :first_name => "value for first_name",
      :last_name => "value for last_name",
      :address => "value for address",
      :phone => "value for phone",
      :email => "value for email"
    )
  end

  it "renders new party form" do
    render

    response.should have_tag("form[action=?][method=post]", parties_path) do
      with_tag("input#party_first_name[name=?]", "party[first_name]")
      with_tag("input#party_last_name[name=?]", "party[last_name]")
      with_tag("input#party_address[name=?]", "party[address]")
      with_tag("input#party_phone[name=?]", "party[phone]")
      with_tag("input#party_email[name=?]", "party[email]")
    end
  end
end
