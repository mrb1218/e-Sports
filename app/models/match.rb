class Match < ApplicationRecord
  resourcify
  belongs_to :league
  has_one :statistic
end
