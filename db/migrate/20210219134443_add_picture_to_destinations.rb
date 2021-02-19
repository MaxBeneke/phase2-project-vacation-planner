class AddPictureToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :picture, :string
  end
end
