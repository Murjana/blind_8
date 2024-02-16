require "rails_helper"

RSpec.describe "home page" do
  before(:each) do
    visit "/"
  end
  it "allows visitor to read about the app and signup" do
    expect(page).to have_content("You only have 8 chances")
  end
end
