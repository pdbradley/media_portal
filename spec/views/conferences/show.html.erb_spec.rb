require 'rails_helper'

RSpec.describe "conferences/show", type: :view do
  before(:each) do
    @conference = assign(:conference, Conference.create!(
      :title => "Title",
      :year => "Year",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/Location/)
  end
end
