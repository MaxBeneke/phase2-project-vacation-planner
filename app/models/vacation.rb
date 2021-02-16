class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :departures
  has_many :flights, through: :departures
  has_many :arrivals
  has_many :flights, through: :arrivals
  has_many :vacation_activities
  has_many :activities, through: :vacation_activities
end
