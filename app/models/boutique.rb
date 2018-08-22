class Boutique < ApplicationRecord
  has_many :scooters
  geocoded_by :adresse
  after_validation :geocode, if: :will_save_change_to_adresse?
end
