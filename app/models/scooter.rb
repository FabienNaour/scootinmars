class Scooter < ApplicationRecord
  belongs_to :boutique
  has_many :reservations
end
