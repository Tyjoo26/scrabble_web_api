class InputController < ApplicationController

  def index
    os = OxfordService.new
    

    os.parse_json
    binding.pry
  end

end
