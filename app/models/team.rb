class Team < ApplicationRecord
  resourcify
  belongs_to :league
  has_one :statistic
  has_and_belongs_to_many :seasons
  has_many :players

  def self.search(search)
  		where("team_name LIKE ?", "%#{search}%")
	   end
end
