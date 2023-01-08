class Reporte < ApplicationRecord
  belongs_to :cliente
  belongs_to :sucursale
  belongs_to :equipo
  validates :incio, presence: true
  validates :termino, presence: true
  validates :servicio, presence: true
end
