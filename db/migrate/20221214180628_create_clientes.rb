class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :rut
      t.string :nombre
      t.string :direccion

      t.timestamps
    end
  end
end
