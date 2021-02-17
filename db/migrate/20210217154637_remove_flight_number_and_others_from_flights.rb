class RemoveFlightNumberAndOthersFromFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :flight_number
    remove_column :flights, :price
    remove_column :flights, :departure_airport
    remove_column :flights, :arrival_airport
    add_column :flights, :destination_airport, :string
  end
end
