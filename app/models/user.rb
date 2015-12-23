class User < ActiveRecord::Base
  has_many :standings
  has_many :games, through: :standings
  validates :name, :password, presence: true
end
