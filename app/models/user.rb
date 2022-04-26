class User < ApplicationRecord
  has_secure_password
  
  has_one :subscriptions, dependent: :destroy
  
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }

  has_many :rented_bikes, class_name: :Rent, foreign_key: :user_email
end
