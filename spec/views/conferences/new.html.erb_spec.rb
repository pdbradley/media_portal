require 'rails_helper'

RSpec.describe "conferences/new", type: :view do
  before(:each) do
    assign(:conference, Conference.new(
      :title => "MyString",
      :year => "MyString",
      :location => "MyString"
    ))
  end

  it "renders new conference form" do
    render

    assert_select "form[action=?][method=?]", conferences_path, "post" do

      assert_select "input#conference_title[name=?]", "conference[title]"

      assert_select "input#conference_year[name=?]", "conference[year]"

      assert_select "input#conference_location[name=?]", "conference[location]"
    end
  end
end
