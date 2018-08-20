class Reservation < ApplicationRecord
  belongs_to :scooter
  belongs_to :user
end
