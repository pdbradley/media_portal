require 'rails_helper'

RSpec.describe "conferences/index", type: :view do
  before(:each) do
    assign(:conferences, [
      Conference.create!(
        :title => "Title",
        :year => "Year",
        :location => "Location"
      ),
      Conference.create!(
        :title => "Title",
        :year => "Year",
        :location => "Location"
      )
    ])
  end

  it "renders a list of conferences" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
