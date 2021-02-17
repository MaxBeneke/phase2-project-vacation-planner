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

  @@months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
  @@months_hash = {"Jan" => "01", "Feb" => "02", "Mar" => "03", "Apr" => "04", "May" => "05", "June" => "06",
                  "July" => "07", "Aug" => "08", "Sept" => "09", "Oct" => "10", "Nov" => "11", "Dec" => "12"}


  def self.months
    @@months
  end

  def generate_kayak
    if day_start.length < 2
      day_start = "0" + self.day_start
    end
    "https://www.kayak.com/flights/NYC-#{destination.abbr}/#{year_start}-#{@@months_hash[month_start]}-#{day_start}"
  end

end
