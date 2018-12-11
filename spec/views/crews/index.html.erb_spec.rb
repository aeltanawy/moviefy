require 'rails_helper'

RSpec.describe "crews/index", type: :view do
  before(:each) do
    assign(:crews, [
      Crew.create!(
        :director_name => "Director Name",
        :director_facebook_likes => 2,
        :actor_1_name => "Actor 1 Name",
        :actor_1_facebook_likes => 3,
        :actor_2_name => "Actor 2 Name",
        :actor_2_facebook_likes => 4,
        :actor_3_name => "Actor 3 Name",
        :actor_3_facebook_likes => 5,
        :cast_total_facebook_likes => 6,
        :movie => nil
      ),
      Crew.create!(
        :director_name => "Director Name",
        :director_facebook_likes => 2,
        :actor_1_name => "Actor 1 Name",
        :actor_1_facebook_likes => 3,
        :actor_2_name => "Actor 2 Name",
        :actor_2_facebook_likes => 4,
        :actor_3_name => "Actor 3 Name",
        :actor_3_facebook_likes => 5,
        :cast_total_facebook_likes => 6,
        :movie => nil
      )
    ])
  end

  it "renders a list of crews" do
    render
    assert_select "tr>td", :text => "Director Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Actor 1 Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Actor 2 Name".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Actor 3 Name".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
