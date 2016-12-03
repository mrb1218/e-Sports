class League < ApplicationRecord
	resourcify
	has_and_belongs_to_many :seasons
	has_many :teams, dependent: :destroy
end
