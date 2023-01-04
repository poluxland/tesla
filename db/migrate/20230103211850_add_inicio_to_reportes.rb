class AddInicioToReportes < ActiveRecord::Migration[7.0]
  def change
    add_column :reportes, :incio, :datetime
    add_column :reportes, :termino, :datetime
  end
end
