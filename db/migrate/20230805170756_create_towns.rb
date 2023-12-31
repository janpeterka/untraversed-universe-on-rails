class CreateTowns < ActiveRecord::Migration[7.0]
  def change
    create_table :towns do |t|
      t.string :name
      t.references :planet, null: false, foreign_key: true
      t.references :discoverer, foreign_key: { to_table: 'players' }

      t.timestamps
    end
  end
end
