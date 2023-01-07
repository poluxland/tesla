class AddObservacionesToEquipos < ActiveRecord::Migration[7.0]
  def change
    add_column :equipos, :ubicacion, :text
  end
end
