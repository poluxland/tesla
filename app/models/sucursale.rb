class Sucursale < ApplicationRecord
  belongs_to :cliente
  has_many :equipos
end
