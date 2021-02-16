class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.belongs_to :destination, null: false, foreign_key: true
      t.float :price
      t.float :time_duration

      t.timestamps
    end
  end
end
