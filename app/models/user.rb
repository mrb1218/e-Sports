class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  rolify
  has_one :player
  has_many :favorites

   after_create :assign_default_role

   validates_uniqueness_of :email

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end

  acts_as_messageable

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end

  def self.search(search)
      where("first_name LIKE ?", "%#{search}%")
  end


end
