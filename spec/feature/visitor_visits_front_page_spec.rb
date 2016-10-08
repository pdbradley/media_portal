require 'rails_helper'

describe "visit to front page", type: :feature do
  it "displays a welcome message" do
    visit root_path
    expect(page).to have_content "Welcome"
  end

end
