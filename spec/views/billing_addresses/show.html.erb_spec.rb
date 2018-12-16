require 'rails_helper'

RSpec.describe "billing_addresses/show", type: :view do
  before(:each) do
    @billing_address = assign(:billing_address, BillingAddress.create!(
      :street => "Street",
      :city => "City",
      :state => "State",
      :zipcode => 2,
      :credit_card => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
