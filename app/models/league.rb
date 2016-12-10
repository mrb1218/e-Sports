class League < ApplicationRecord
	resourcify
	has_and_belongs_to_many :seasons
	has_many :teams, dependent: :destroy

	def self.search(search)
  		where("league_name LIKE ?", "%#{search}%") 
	end
end
