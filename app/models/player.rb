class Player < ActiveRecord::Base
  has_one :address
  belongs_to :team
  has_many :appearences
  has_many :games, through: :appearences
  
  validates :first_name,  presence: true
  validates :lastname, presence: true, on: :create
  validates :age, numericality: {greater_than: 0, less_than_or_equal_to: 100}
end
