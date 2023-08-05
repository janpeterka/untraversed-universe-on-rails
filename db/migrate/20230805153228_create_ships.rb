class CreateShips < ActiveRecord::Migration[7.0]
  def change
    create_table :ships do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :sensors
      t.integer :firepower
      t.integer :durability
      t.integer :accomodation
      t.integer :speed

      t.timestamps
    end
    add_index :ships, :name
  end
end
