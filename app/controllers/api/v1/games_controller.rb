class Api::V1::GamesController < ApplicationController


  def show
    render json: Game.find(params[:id])
    # format.json { render :json => Game.find(params[:id]) {:message => "Success"} }
  end


end
