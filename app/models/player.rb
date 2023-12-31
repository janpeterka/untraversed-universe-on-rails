class Player < ApplicationRecord
  has_one :ship
  has_many :qualities
  has_many :discovered_planets, class_name: "Planet"
  has_many :discovered_towns, class_name: "Town"
end
