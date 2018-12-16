require 'rails_helper'

RSpec.describe "credit_cards/index", type: :view do
  before(:each) do
    assign(:credit_cards, [
      CreditCard.create!(
        :name_on_card => "Name On Card",
        :card_num => 2,
        :security_code => 3,
        :user => nil
      ),
      CreditCard.create!(
        :name_on_card => "Name On Card",
        :card_num => 2,
        :security_code => 3,
        :user => nil
      )
    ])
  end

  it "renders a list of credit_cards" do
    render
    assert_select "tr>td", :text => "Name On Card".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
