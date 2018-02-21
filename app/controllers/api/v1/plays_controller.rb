class Api::V1::PlaysController < ApplicationController


  def create
    game = Game.find(params[:game_id])
    plays = game.plays.new(play_params)
    if plays.save
      render status: 200, json: plays.to_json, :message => "201 Created Response"
    end
    binding.pry
  end



  private

    def play_params
      params.permit(:user_id, :game_id, :word)
    end
end
