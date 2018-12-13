require 'rails_helper'

RSpec.describe "theaters/new", type: :view do
  before(:each) do
    assign(:theater, Theater.new(
      :state => "MyString",
      :city => "MyString",
      :theater_name => "MyString",
      :zipcode => "MyString"
    ))
  end

  it "renders new theater form" do
    render

    assert_select "form[action=?][method=?]", theaters_path, "post" do

      assert_select "input[name=?]", "theater[state]"

      assert_select "input[name=?]", "theater[city]"

      assert_select "input[name=?]", "theater[theater_name]"

      assert_select "input[name=?]", "theater[zipcode]"
    end
  end
end
