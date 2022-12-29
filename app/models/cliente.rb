class Cliente < ApplicationRecord
  validates_uniqueness_of :rut, :message => "ya registrado"
  validates :rut, format: { with: /\A\b[1-9]?\d\d\d\d\d\d\d-[K|0-9]\z/ }
  has_many :sucursale, dependent: :destroy

end

