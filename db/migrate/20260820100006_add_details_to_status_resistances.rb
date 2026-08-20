class AddDetailsToStatusResistances < ActiveRecord::Migration[7.0]
  def change
    add_column :status_resistances, :capture_rate, :integer
    add_column :status_resistances, :damage, :integer
    add_column :status_resistances, :immune, :boolean, null: false, default: false
  end
end
