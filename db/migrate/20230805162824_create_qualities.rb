class CreateQualities < ActiveRecord::Migration[7.0]
  def change
    create_table :qualities do |t|
      t.string :category
      t.string :name
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
