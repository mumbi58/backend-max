class User < ApplicationRecord
    has_secure_password
    validates :telephone_number, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
