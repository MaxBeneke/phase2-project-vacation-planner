class Flight < ApplicationRecord
    has_many :arrivals, class_name: "Arrival", foreign_key: "arrival_id"
    has_many :departures, class_name: "Departure"
end
