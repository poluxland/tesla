class AddRefrigeranteToEquipos < ActiveRecord::Migration[7.0]
  def change
    add_column :equipos, :refrigerante, :string
  end
end
