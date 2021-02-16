class CreateDepartures < ActiveRecord::Migration[6.1]
  def change
    create_table :departures do |t|
      t.belongs_to :vacation, null: false, foreign_key: true
      t.belongs_to :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
