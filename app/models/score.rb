class Score < ActiveRecord::Base
  belongs_to :game, touch: true
  has_many :rounds

  validates :player, uniqueness: {scope: :game, message: "has the same name as another player in this game"}
end
