class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :flight_number
      t.string :departure_airport
      t.string :arrival_airport
      t.float :price
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
