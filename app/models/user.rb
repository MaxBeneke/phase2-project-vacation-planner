class User < ApplicationRecord
    has_many :vacations
    has_many :destinations, through: :vacations
    has_many :vacation_flights, through: :vacations
    has_many :flights, through: :vacation_flights

    has_secure_password validations: false

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true, on: :create
    validates :password, length: {minimum: 8}, on: :create
    validates :password, confirmation: {case_sensitive: true}, on: :create

    def password_match?(password1, password2)
        return password1 == password2
    end

end
