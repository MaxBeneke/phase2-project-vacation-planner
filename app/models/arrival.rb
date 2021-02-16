class Arrival < ApplicationRecord
  belongs_to :vacation
  belongs_to :arrival_flight, class_name: "Flight", foreign_key: "flight_id"
end
