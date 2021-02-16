class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_one :departure
  has_one :departure_flight, through: :departure, source: :departure_flight
  has_many :arrival
  has_many :arrival_flight, through: :arrival, source: :arrival_flight 
  has_many :vacation_activities
  has_many :activities, through: :vacation_activities

  validates :user_id, presence: true  
  validates :destination_id, presence: true

end
