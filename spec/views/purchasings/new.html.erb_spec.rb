require 'rails_helper'

RSpec.describe "purchasings/new", type: :view do
  before(:each) do
    assign(:purchasing, Purchasing.new(
      :num_of_tickets => 1,
      :movie => nil,
      :theater => nil,
      :user => nil,
      :credit_card => nil
    ))
  end

  it "renders new purchasing form" do
    render

    assert_select "form[action=?][method=?]", purchasings_path, "post" do

      assert_select "input[name=?]", "purchasing[num_of_tickets]"

      assert_select "input[name=?]", "purchasing[movie_id]"

      assert_select "input[name=?]", "purchasing[theater_id]"

      assert_select "input[name=?]", "purchasing[user_id]"

      assert_select "input[name=?]", "purchasing[credit_card_id]"
    end
  end
end
