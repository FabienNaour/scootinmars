class Reservation < ApplicationRecord
  belongs_to :scooter
  belongs_to :user
  validates :date_debut, :date_fin, presence: true,
                                    format: { with: /\A([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}\z/ }
end
