require 'rails_helper'

RSpec.describe "billing_addresses/new", type: :view do
  before(:each) do
    assign(:billing_address, BillingAddress.new(
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1,
      :credit_card => nil
    ))
  end

  it "renders new billing_address form" do
    render

    assert_select "form[action=?][method=?]", billing_addresses_path, "post" do

      assert_select "input[name=?]", "billing_address[street]"

      assert_select "input[name=?]", "billing_address[city]"

      assert_select "input[name=?]", "billing_address[state]"

      assert_select "input[name=?]", "billing_address[zipcode]"

      assert_select "input[name=?]", "billing_address[credit_card_id]"
    end
  end
end
