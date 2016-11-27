class Match < ApplicationRecord
  belongs_to :league
  has_one :statistic
end
