class CreateSucursales < ActiveRecord::Migration[7.0]
  def change
    create_table :sucursales do |t|
      t.references :cliente, null: false, foreign_key: true
      t.string :nombre
      t.string :direccion
      t.string :contacto

      t.timestamps
    end
  end
end
