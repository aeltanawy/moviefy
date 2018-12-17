require 'rails_helper'

RSpec.describe "purchasings/edit", type: :view do
  before(:each) do
    @purchasing = assign(:purchasing, Purchasing.create!(
      :num_of_tickets => 1,
      :movie => nil,
      :theater => nil,
      :user => nil
    ))
  end

  it "renders the edit purchasing form" do
    render

    assert_select "form[action=?][method=?]", purchasing_path(@purchasing), "post" do

      assert_select "input[name=?]", "purchasing[num_of_tickets]"

      assert_select "input[name=?]", "purchasing[movie_id]"

      assert_select "input[name=?]", "purchasing[theater_id]"

      assert_select "input[name=?]", "purchasing[user_id]"

    end
  end
end
