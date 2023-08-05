class Planet < ApplicationRecord
  belongs_to :discoverer, class_name: 'Player', foreign_key: 'discoverer_id'
  has_many :towns


  def self.generate
    name = "Planet #{rand(0..1000)}"
    coordinate_x = rand(0..1000)
    coordinate_y = rand(0..1000)
    coordinate_z = rand(0..1000)

    planet = Planet.create(name: , coordinate_x: , coordinate_y: , coordinate_z: , discoverer: Current.player)

    rand(1..3).times do |i|
      Town.generate(planet:)
    end

    planet
  end

  def coordinates
    {"x": coordinate_x, "y": coordinate_y, "z": coordinate_z}
  end

end
