require 'rails_helper'

RSpec.describe "credit_cards/new", type: :view do
  before(:each) do
    assign(:credit_card, CreditCard.new(
      :name_on_card => "MyString",
      :card_num => 1,
      :security_code => 1,
      :user => nil
    ))
  end

  it "renders new credit_card form" do
    render

    assert_select "form[action=?][method=?]", credit_cards_path, "post" do

      assert_select "input[name=?]", "credit_card[name_on_card]"

      assert_select "input[name=?]", "credit_card[card_num]"

      assert_select "input[name=?]", "credit_card[security_code]"

      assert_select "input[name=?]", "credit_card[user_id]"
    end
  end
end
