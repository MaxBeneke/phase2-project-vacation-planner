class Departure < ApplicationRecord
  belongs_to :vacation
  belongs_to :departure_flight, class_name: "Flight", foreign_key: "flight_id"
end
