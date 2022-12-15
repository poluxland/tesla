class Cliente < ApplicationRecord
  validates_uniqueness_of :rut, :message => "ya registrado"
  has_many :sucursale
end
