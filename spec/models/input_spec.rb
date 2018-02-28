require 'rails_helper'

describe Input do
  context "instance methods" do
    context "#class methods" do
      it "parse json with a valid word returns array of hashes " do
        input_parse = Input.parse_json("foxes")

        expect(input_parse.class).to eq(Array)
      end

      it "parse json with a invalid word returns false " do
        input_parse = Input.parse_json("basdafasdf")

        expect(input_parse).to eq(false)
      end

      it "map_json with a valid word returns array of hashes " do
        map_json = Input.map_json("foxes")
        expect(map_json.class).to eq(Array)
        object = map_json.first
        expect(object.class).to eq(Input)
      end

      it "map_json with a invalid word returns false " do
        map_json = Input.map_json("asdfsakldf")

        expect(map_json).to eq(false)
      end

      it "grab_input with a valid word returns a string class " do
        grab_input = Input.grab_input("foxes")

        expect(grab_input.root.class).to eq(String)
      end

      it "grab_input with a invalid word returns false " do
        grab_input = Input.grab_input("asdfsakldf")

        expect(grab_input).to eq(false)
      end

    end
  end


end
