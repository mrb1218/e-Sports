class Player < ApplicationRecord
  resourcify
  belongs_to :team
  has_one :statistic
  has_one :user
  has_and_belongs_to_many :seasons

  	def self.search(search)
  		where("ign LIKE ?", "%#{search}%") 
	end
end
