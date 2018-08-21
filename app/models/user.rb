class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations
  has_many :scooters, through: :reservations
  validates :prenom   , presence: true
  validates :nom   , presence: true
  validates :age  , numericality: { greater_than: 17 }, presence: true
end

