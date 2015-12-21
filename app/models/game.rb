class Game < ActiveRecord::Base
  has_many :scores
  has_many :rounds

  def winner
    scores.order(phase: :desc).try(:first).try(:player)
  end
end
