class InputController < ApplicationController

  def index
    if Input.grab_input(params["word"]) == false
      @error = "'#{params["word"]}' is not a valid word"
    else
      @input = Input.grab_input(params["word"])
    end
  end

end
