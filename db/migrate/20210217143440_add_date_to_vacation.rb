class AddDateToVacation < ActiveRecord::Migration[6.1]
  def change
    add_column :vacations, :year_start, :string
    add_column :vacations, :month_start, :string
    add_column :vacations, :day_start, :string
    add_column :vacations, :year_end, :string
    add_column :vacations, :month_end, :string
    add_column :vacations, :day_end, :string
  end
end
