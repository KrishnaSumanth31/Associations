class Game < ActiveRecord::Base
  has_many :appearences
  has_many :players, through: :appearences
end
