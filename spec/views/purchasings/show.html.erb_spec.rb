require 'rails_helper'

RSpec.describe "purchasings/show", type: :view do
  before(:each) do
    @purchasing = assign(:purchasing, Purchasing.create!(
      :num_of_tickets => 2,
      :movie => nil,
      :theater => nil,
      :user => nil,
      :credit_card => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
