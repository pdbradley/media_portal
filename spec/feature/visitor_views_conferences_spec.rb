require 'rails_helper'

describe "Visitor Views Conferences", type: :feature do
  it "User views conferences by year" do
    c1 = Conference.create(title: "Living Christ", year: "2010")
    c2 = Conference.create(title: "Living Christ even more", year: "2010")
    c3 = Conference.create(title: "New Jerusalem", year: "2011")

     visit root_path
     click_link "By Year"
     click_link "2010"

     expect(page).to have_content c1.title
     expect(page).to have_content c2.title
     expect(page).not_to have_content c3.title
  end
end

