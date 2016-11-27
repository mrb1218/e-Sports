class Team < ApplicationRecord
  belongs_to :league
  has_one :statistic
  has_and_belongs_to_many :seasons
  has_many :players
end
