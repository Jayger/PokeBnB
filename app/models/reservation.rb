class Reservation < ApplicationRecord
    validates :address, uniqueness: true
    belongs_to :user
    belongs_to :home
end
