class AddDecreaseIntervalToStatusResistances < ActiveRecord::Migration[7.0]
  def change
    add_column :status_resistances, :decrease_interval, :integer
  end
end
