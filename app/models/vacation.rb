class Vacation < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_one :departure, dependent: :destroy
  has_one :departure_flight, through: :departure, source: :departure_flight
  has_one :arrival, dependent: :destroy
  has_one :arrival_flight, through: :arrival, source: :arrival_flight 
  has_many :vacation_activities, dependent: :destroy
  has_many :activities, through: :vacation_activities

  validates :user_id, presence: true  
  validates :destination_id, presence: true
  validates :year_start, :year_end, :month_start, :month_end, :day_start, :day_end, presence: true

  validate :date_is_after

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

  def search_for_activity(name)
    destination.activities.find {|activity| activity.name == name}
  end

  def date_is_after
    if year_end < year_start
      errors.add(:base, "Return year is earlier than departure year")

    elsif @@months_hash[month_end] < @@months_hash[month_start] && year_end == year_start
      errors.add(:base, "Return month is earlier than departure month")

    elsif day_end.to_i <= day_start.to_i && @@months_hash[month_start] == @@months_hash[month_end] && year_end == year_start
      errors.add(:base, "Return day is earlier than departure day")
    end
  end

end
