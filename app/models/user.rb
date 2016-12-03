class User < ApplicationRecord
  rolify
  has_one :player
  has_many :favorites

   after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
end
