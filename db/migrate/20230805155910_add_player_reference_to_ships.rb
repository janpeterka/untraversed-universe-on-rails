class AddPlayerReferenceToShips < ActiveRecord::Migration[7.0]
  def change
    add_reference :ships, :player, null: false, foreign_key: true
  end
end
