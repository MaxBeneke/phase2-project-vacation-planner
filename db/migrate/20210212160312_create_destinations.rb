class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :language
      t.text :description
      t.text :highlights

      t.timestamps
    end
  end
end
