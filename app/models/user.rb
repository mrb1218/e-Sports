class User < ApplicationRecord
  has_one :player
  has_many :favorites
end
