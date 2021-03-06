require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "F",
        :dob => "1999-09-01",
        :email => "Email.1@gmail.com",
        :password => "Password Digest"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :gender => "F",
        :dob => "1999-09-01",
        :email => "Email.2@gmail.com",
        :password => "Password Digest"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "F".to_s, :count => 2
    assert_select "tr>td", :text => "Email.2@gmail.com".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
