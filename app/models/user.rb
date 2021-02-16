class User < ApplicationRecord
    has_many :vacations
    has_many :destinations, through: :vacations
    has_many :vacation_flights, through: :vacations
    has_many :flights, through: :vacation_flights

    has_secure_password
end
