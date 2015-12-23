class Game < ActiveRecord::Base
  has_many :standings
  has_many :users, through: :standings
  validates :name, presence: true
end
