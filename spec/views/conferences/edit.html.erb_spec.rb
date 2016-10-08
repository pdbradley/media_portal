require 'rails_helper'

RSpec.describe "conferences/edit", type: :view do
  before(:each) do
    @conference = assign(:conference, Conference.create!(
      :title => "MyString",
      :year => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit conference form" do
    render

    assert_select "form[action=?][method=?]", conference_path(@conference), "post" do

      assert_select "input#conference_title[name=?]", "conference[title]"

      assert_select "input#conference_year[name=?]", "conference[year]"

      assert_select "input#conference_location[name=?]", "conference[location]"
    end
  end
end
