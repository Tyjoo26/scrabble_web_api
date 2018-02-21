require 'rails_helper'

describe "as a user when i visit / " do
  context "i can fill in a text box with a foxes" do
    it "allows me to validate word and will display a validation message" do


      visit root_path

      fill_in "word", with: "foxes"
      click_button "Validate Word"

      expect(current_path).to eq(root_path)

      expect(page).to have_content("'#{word.valid}' is a valid word and its room form is '#{word.root}'")
    end
  end
end
