class InputController < ApplicationController

  def index
    if Input.map_input(params["word"]) == false
      @error = "'#{params["word"]}' is not a valid word"
    else
      @input = Input.map_input(params["word"])
    end
  end

end
