class CreatePlanets < ActiveRecord::Migration[7.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :coordinate_x
      t.integer :coordinate_y
      t.integer :coordinate_z
      t.references :discoverer, foreign_key: { to_table: 'players' }

      t.timestamps
    end
  end
end
