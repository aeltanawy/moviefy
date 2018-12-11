require 'rails_helper'

RSpec.describe "crews/edit", type: :view do
  before(:each) do
    @crew = assign(:crew, Crew.create!(
      :director_name => "MyString",
      :director_facebook_likes => 1,
      :actor_1_name => "MyString",
      :actor_1_facebook_likes => 1,
      :actor_2_name => "MyString",
      :actor_2_facebook_likes => 1,
      :actor_3_name => "MyString",
      :actor_3_facebook_likes => 1,
      :cast_total_facebook_likes => 1,
      :movie => nil
    ))
  end

  it "renders the edit crew form" do
    render

    assert_select "form[action=?][method=?]", crew_path(@crew), "post" do

      assert_select "input[name=?]", "crew[director_name]"

      assert_select "input[name=?]", "crew[director_facebook_likes]"

      assert_select "input[name=?]", "crew[actor_1_name]"

      assert_select "input[name=?]", "crew[actor_1_facebook_likes]"

      assert_select "input[name=?]", "crew[actor_2_name]"

      assert_select "input[name=?]", "crew[actor_2_facebook_likes]"

      assert_select "input[name=?]", "crew[actor_3_name]"

      assert_select "input[name=?]", "crew[actor_3_facebook_likes]"

      assert_select "input[name=?]", "crew[cast_total_facebook_likes]"

      assert_select "input[name=?]", "crew[movie_id]"
    end
  end
end
