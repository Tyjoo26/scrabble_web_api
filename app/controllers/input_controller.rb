class InputController < ApplicationController

  def index
    os = OxfordService.new


    @input = os.map_json(params["word"])
    binding.pry
  end

end
