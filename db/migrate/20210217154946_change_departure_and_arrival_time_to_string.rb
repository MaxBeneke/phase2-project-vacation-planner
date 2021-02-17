class ChangeDepartureAndArrivalTimeToString < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :departure_time, :string
    change_column :flights, :arrival_time, :string
  end
end
