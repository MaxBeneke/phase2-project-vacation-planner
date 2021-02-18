class VacationActivity < ApplicationRecord
  belongs_to :activity
  belongs_to :vacation

  validates :activity_id, uniqueness: { scope: :vacation_id, message: "has already been chosen." }
end
