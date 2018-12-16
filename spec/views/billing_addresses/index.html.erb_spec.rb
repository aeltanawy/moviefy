require 'rails_helper'

RSpec.describe "billing_addresses/index", type: :view do
  before(:each) do
    assign(:billing_addresses, [
      BillingAddress.create!(
        :street => "Street",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :credit_card => nil
      ),
      BillingAddress.create!(
        :street => "Street",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :credit_card => nil
      )
    ])
  end

  it "renders a list of billing_addresses" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
