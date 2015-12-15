class Game < ActiveRecord::Base
  has_many :scores
  has_many :rounds
end
