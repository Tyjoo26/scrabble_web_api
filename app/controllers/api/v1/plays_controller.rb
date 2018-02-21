class Api::V1::PlaysController < ApplicationController

  def index
    game = Game.find(params[:game_id])
    render json: game.plays.all
  end

  def create
    game = Game.find(params[:game_id])
    plays = game.plays.new(play_params)
    if plays.save
      render status: 200, json: plays.to_json, :message => "201 Created Response"
    end
  end



  private

    def play_params
      params.permit(:user_id, :word)
    end
end
