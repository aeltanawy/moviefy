require 'rails_helper'

RSpec.describe "credit_cards/show", type: :view do
  before(:each) do
    @credit_card = assign(:credit_card, CreditCard.create!(
      :name_on_card => "Name On Card",
      :card_num => 2,
      :security_code => 3,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name On Card/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
  end
end
