require 'rails_helper'

RSpec.describe "theaters/index", type: :view do
  before(:each) do
    assign(:theaters, [
      Theater.create!(
        :state => "State",
        :city => "City",
        :latitude => 2.5,
        :longitude => 3.5,
        :theater_name => "Theater Name",
        :zipcode => "Zipcode"
      ),
      Theater.create!(
        :state => "State",
        :city => "City",
        :latitude => 2.5,
        :longitude => 3.5,
        :theater_name => "Theater Name",
        :zipcode => "Zipcode"
      )
    ])
  end

  it "renders a list of theaters" do
    render
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => "Theater Name".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
  end
end
