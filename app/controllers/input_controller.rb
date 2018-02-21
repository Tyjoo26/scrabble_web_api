class InputController < ApplicationController

  def index
    @input = Input.map_input(params["word"])
    
  end

end
