class ScoresController < ApplicationController
  def new
    @score = Score.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game = Game.find(params[:game_id])
    @score = @game.scores.new(score_params)
    if @score.save
      respond_to do |format|
        format.html { redirect_to game_path(@game) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  private

  def score_params
    params.require(:score).permit(:player)
  end
end
