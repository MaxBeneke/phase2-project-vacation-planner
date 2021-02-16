class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :departures
  has_many :flights, through: :departures
  has_many :arrivals
  has_many :arrival_flights, through: :arrivals, source: :arrival_flight 
  has_many :vacation_activities
  has_many :activities, through: :vacation_activities

  validates :user_id, presence: true
  validates :destination_id, presence: true

end
