class Destination < ApplicationRecord
    has_many :activities
    has_many :vacations
    has_many :users, through: :vacations
end
