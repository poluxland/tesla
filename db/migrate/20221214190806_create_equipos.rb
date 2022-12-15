class CreateEquipos < ActiveRecord::Migration[7.0]
  def change
    create_table :equipos do |t|
      t.references :sucursale, null: false, foreign_key: true
      t.string :unidad
      t.string :tipo
      t.string :contacto
      t.string :otros
      t.string :codigo
      t.string :observaciones

      t.timestamps
    end
  end
end
