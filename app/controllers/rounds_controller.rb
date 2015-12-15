class RoundsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @scores = @game.scores
    @round = Round.new
  end
end
