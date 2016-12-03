class Favorite < ApplicationRecord
  resourcify
  belongs_to :user
end
