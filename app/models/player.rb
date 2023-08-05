class Player < ApplicationRecord
  has_one :ship
  has_many :qualities
end
