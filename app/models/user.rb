class User < ApplicationRecord

  has_many :user_images
  has_many :user_roles
  has_many :roles, through: :user_roles
  accepts_nested_attributes_for :user_images, :user_roles
  validates :email, uniqueness: true
end
