class WelcomeController < ApplicationController
  def index
    binding.pry
    os = OxfordService.new
    os.get_json(params["word"])

  end
end
