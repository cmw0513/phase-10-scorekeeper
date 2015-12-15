class Round < ActiveRecord::Base
  belongs_to :game
  belongs_to :score

  after_create :add_to_score

  private

  def add_to_score
    score.phase += 1 if phase
    score.point_count += point_count
    score.save!
  end
end
