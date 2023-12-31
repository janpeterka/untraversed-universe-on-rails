class Ship < ApplicationRecord
  belongs_to :player, optional: false
  validates :name, presence: true
  validates :description, presence: true

  def self.create_from(id)
    original_ship = default_ships.find { |ship| ship.id == id }
    p original_ship
    ship = original_ship.dup
    ship
  end

  def self.default_ships
    data = {
      "1": {
          "name": "Bumblebee",
          "description": "Great ship for transporting goods of any kind.",
          "sensors": "2",
          "firepower": "1",
          "durability": "2",
          "accomodation": "5",
          "speed": "1",
      },
      "2": {
          "name": "Flea",
          "description": "You want to get away quickly? Then Flea is your ship!",
          "sensors": "3",
          "firepower": "1",
          "durability": "1",
          "accomodation": "1",
          "speed": "5",
      },
      "3": {
          "name": "Moth",
          "description": "Moths can disappear so seamlessly, some people still don't believe in their existence",
          "sensors": "4",
          "firepower": "2",
          "durability": "1",
          "accomodation": "2",
          "speed": "2",
      },
      "4": {
          "name": "Wasp",
          "description": "Deadly, but uncomfortable",
          "sensors": "1",
          "firepower": "4",
          "durability": "2",
          "accomodation": "1",
          "speed": "3",
      },
    }
    ships = []
    data.each do |key, values|
      ships << Ship.new({id: key.to_s, **values})
    end
    ships
    p ships
  end
end
