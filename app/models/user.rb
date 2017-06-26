class User < ApplicationRecord
  rolify
  after_create :assign_default_role

  def assign_default_role
      self.add_role(:newuser) if seld.roles.blank?
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
end
