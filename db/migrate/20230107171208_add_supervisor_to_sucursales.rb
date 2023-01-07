class AddSupervisorToSucursales < ActiveRecord::Migration[7.0]
  def change
    add_column :sucursales, :supervisor, :string
  end
end
