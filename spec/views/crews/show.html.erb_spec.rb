require 'rails_helper'

RSpec.describe "crews/show", type: :view do
  before(:each) do
    @crew = assign(:crew, Crew.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Director Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Actor 1 Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Actor 2 Name/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Actor 3 Name/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
  end
end
