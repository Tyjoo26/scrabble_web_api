require 'rails_helper'

describe "as a user when i visit / " do
  context "i can fill in a text box with a foxes" do
    it "allows me to validate word and will display a validation message" do
      

      visit root_path

      fill_in "word", with: "foxes"
      click_button "Validate Word"

      expect(current_path).to eq(input_path)

      expect(page).to have_content("'#{input.word}' is a valid word and its room form is '#{input.root}'")
    end
  end
end
