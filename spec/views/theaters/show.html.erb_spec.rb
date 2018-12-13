require 'rails_helper'

RSpec.describe "theaters/show", type: :view do
  before(:each) do
    @theater = assign(:theater, Theater.create!(
      :state => "State",
      :city => "City",
      :theater_name => "Theater Name",
      :zipcode => "Zipcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/State/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Theater Name/)
    expect(rendered).to match(/Zipcode/)
  end
end
