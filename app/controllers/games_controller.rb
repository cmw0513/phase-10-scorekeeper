class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @scores = @game.scores
  end

  def new
    @game = Game.new
    if @game.save!
      redirect_to game_path(@game)
    else
      render :index
    end
  end

  def create
  end
end
