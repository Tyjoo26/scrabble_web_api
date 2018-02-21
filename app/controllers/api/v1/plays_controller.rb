class Api::V1::PlaysController < ApplicationController


  def create
    game = Game.find(params[:game_id])
    play = game.plays.new(play_params)
    if play.save
      render status: 200, json: play.to_json, :message => "201 Created Response"
    end
  end



  private

    def play_params
      params.permit(:user_id, :game_id, :word)
    end
end
