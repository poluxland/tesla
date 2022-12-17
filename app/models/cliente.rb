class Cliente < ApplicationRecord
  validates_uniqueness_of :rut, :message => "ya registrado"
  validates :rut, format: { with: /\b\d?\d.\d\d\d.\d\d\d-[K|0-9]/ }
  has_many :sucursale

end
