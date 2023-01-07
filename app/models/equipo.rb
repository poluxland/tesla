class Equipo < ApplicationRecord
  validates_uniqueness_of :codigo, :message => "ya existe ese codigo"
  belongs_to :sucursale

end
