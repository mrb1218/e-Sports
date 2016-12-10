class Statistic < ApplicationRecord
  resourcify
  belongs_to :team
  belongs_to :match
  belongs_to :player
  belongs_to :season
end
