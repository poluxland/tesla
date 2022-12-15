class Reporte < ApplicationRecord
  belongs_to :cliente
  belongs_to :sucursale
  belongs_to :equipo
end
