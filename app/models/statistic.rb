class Statistic < ApplicationRecord
  belongs_to :team
  belongs_to :match
  belongs_to :season
end
