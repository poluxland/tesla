class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :cliente, :boolean
    add_column :users, :tecnico, :boolean
    add_column :users, :role, :integer
  end
end
