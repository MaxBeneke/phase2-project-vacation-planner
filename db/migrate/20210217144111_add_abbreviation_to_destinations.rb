class AddAbbreviationToDestinations < ActiveRecord::Migration[6.1]
  def change
    add_column :destinations, :abbr, :string
  end
end
