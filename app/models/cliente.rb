class Cliente < ApplicationRecord
  validates_uniqueness_of :rut, :message => "ya registrado"
  validates_uniqueness_of :nombre, :message => "ya existe ese nombre"
  validates :rut, format: { with: /\A\b[1-9]?\d\d\d\d\d\d\d-[K|0-9]\z/ }
  has_many :sucursale, dependent: :destroy
  validates :nombre, presence: true

end

