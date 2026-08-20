class CreateStatusResistances < ActiveRecord::Migration[7.0]
  def change
    create_table :status_resistances do |t|
      t.references :monster_variant, null: false, foreign_key: true
      t.string :status
      t.integer :initial_resistance
      t.integer :resistance_increase
      t.integer :increase_count
      t.integer :resistance_decrease
      t.integer :duration

      t.timestamps
    end
  end
end
