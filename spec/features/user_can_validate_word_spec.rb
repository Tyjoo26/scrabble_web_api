require 'rails_helper'

describe "as a user when i visit / " do
  context "i can fill in a text box with a word" do
    it "allows me to validate word and will display a validation message" do


      visit root_path

      fill_in "word", with: "foxes"
      click_button "Validate Word"

      expect(current_path).to eq(input_path)

      expect(page).to have_content("'foxes' is a valid word and its root form is 'fox'")
    end

    it "allows me to validate word and will display a invalid message if i put in an invalid word" do


      visit root_path

      fill_in "word", with: "sdalkfjasdfjkaskj"
      click_button "Validate Word"

      expect(current_path).to eq(input_path)

      expect(page).to have_content("'sdalkfjasdfjkaskj' is not a valid word")
    end
  end
end
