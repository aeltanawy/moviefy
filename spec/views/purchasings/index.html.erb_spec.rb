require 'rails_helper'

RSpec.describe "purchasings/index", type: :view do
  before(:each) do
    assign(:purchasings, [
      Purchasing.create!(
        :num_of_tickets => 2,
        :movie => nil,
        :theater => nil,
        :user => nil
      ),
      Purchasing.create!(
        :num_of_tickets => 2,
        :movie => nil,
        :theater => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of purchasings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
