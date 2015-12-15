class ScoresController < ApplicationController
  def new
    @score = Score.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @score = @game.scores.new(score_params)
    if @score.save!
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def score_params
    params.require(:score).permit(:player)
  end
end
