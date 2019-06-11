class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    
    has_many :reservations
    has_many :homes, through: :reservations
end
