class Flight < ApplicationRecord
    has_many :arrivals, class_name: "Arrival", dependent: :destroy
    has_many :departures, class_name: "Departure", dependent: :destroy
end
