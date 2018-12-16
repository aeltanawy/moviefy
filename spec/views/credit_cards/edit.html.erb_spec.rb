require 'rails_helper'

RSpec.describe "credit_cards/edit", type: :view do
  before(:each) do
    @credit_card = assign(:credit_card, CreditCard.create!(
      :name_on_card => "MyString",
      :card_num => 1,
      :security_code => 1,
      :user => nil
    ))
  end

  it "renders the edit credit_card form" do
    render

    assert_select "form[action=?][method=?]", credit_card_path(@credit_card), "post" do

      assert_select "input[name=?]", "credit_card[name_on_card]"

      assert_select "input[name=?]", "credit_card[card_num]"

      assert_select "input[name=?]", "credit_card[security_code]"

      assert_select "input[name=?]", "credit_card[user_id]"
    end
  end
end
