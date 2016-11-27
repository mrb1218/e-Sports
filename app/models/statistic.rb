class Statistic < ApplicationRecord
  has_one :team
  has_one :match
  has_one :player
  belongs_to :season
end
