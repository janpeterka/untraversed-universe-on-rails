class Town < ApplicationRecord
  belongs_to :planet
  belongs_to :discoverer, class_name: "Player"

  def self.generate(planet:)
    name = "Town #{rand(0..1000)}"

    Town.create(name: , planet: ,discoverer: Current.player)
  end
end
