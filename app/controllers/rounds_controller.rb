class RoundsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @score = Score.find(params[:score_id])
    @round = Round.new
  end

  def create
    @game = Game.find(params[:game_id])
    @score = Score.find(params[:score_id])
    @round = @score.rounds.new(round_params)
    if @round.save!
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def round_params
    params.require(:round).permit(:phase, :point_count)
  end
end
