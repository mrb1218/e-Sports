class Player < ApplicationRecord
  resourcify
  belongs_to :team
  has_one :statistic
  has_one :user
  has_and_belongs_to_many :seasons

  # validates :ign, presence: true
  # validates :age, presence: true
  # validates :country, presence: true
  # validates :in_game_role, presence: true
  # validates :email, presence: true

  	def self.search(search)
  		where("ign LIKE ?", "%#{search}%")
	end
end
