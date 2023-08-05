class AddDefaultShips < ActiveRecord::Migration[7.0]
  def change
    Ship.default_ships.each do |id, ship|
      Ship.create(id: id, name: ship[:name], description: ship[:description], sensors: ship[:sensors], firepower: ship[:firepower], durability: ship[:durability], accomodation: ship[:accomodation], speed: ship[:speed])
    end
  end
end


