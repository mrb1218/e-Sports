class Season < ApplicationRecord
	resourcify
	has_and_belongs_to_many :leagues
	has_many :statistics
	has_and_belongs_to_many :teams
	has_and_belongs_to_many :players
end
