class Sucursale < ApplicationRecord
  belongs_to :cliente
  has_many :equipos
  validates :nombre, length: { minimum: 1 }
end
