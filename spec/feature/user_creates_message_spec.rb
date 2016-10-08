require 'rails_helper'

describe "User creates a message", type: :feature do
  it "provides the user with a form and he creates a message" do
    visit root_path
    click_link "Create Message"
    fill_in "Title", with: "Jesus is great"
    click_button "Create Message"

    expect(Message.last.title).to eq "Jesus is great"
  end
end
