class User < ApplicationRecord
    has_many :vacations
    has_many :destinations, through: :vacations
    has_many :vacation_flights, through: :vacations
    has_many :flights, through: :vacation_flights

    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    validates :password, length: {minimum: 8}

end
