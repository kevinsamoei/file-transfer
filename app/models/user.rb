class User < ApplicationRecord
  has_secure_password
  has_many :documents, dependent: :destroy
  
  validates :email, presence: true, uniqueness: true
end
