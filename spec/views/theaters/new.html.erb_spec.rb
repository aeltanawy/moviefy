require 'rails_helper'

RSpec.describe "theaters/new", type: :view do
  before(:each) do
    assign(:theater, Theater.new(
      :state => "MyString",
      :city => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :theater_name => "MyString",
      :zipcode => "MyString"
    ))
  end

  it "renders new theater form" do
    render

    assert_select "form[action=?][method=?]", theaters_path, "post" do

      assert_select "input[name=?]", "theater[state]"

      assert_select "input[name=?]", "theater[city]"

      assert_select "input[name=?]", "theater[latitude]"

      assert_select "input[name=?]", "theater[longitude]"

      assert_select "input[name=?]", "theater[theater_name]"

      assert_select "input[name=?]", "theater[zipcode]"
    end
  end
end
