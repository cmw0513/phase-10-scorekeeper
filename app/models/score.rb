class Score < ActiveRecord::Base
  belongs_to :game
  has_many :rounds
end
