class AddDetailsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :idUsuario, :integer
    add_column :users, :logiUsuario, :string
    add_column :users, :nomUsuario, :string
    add_column :users, :apeUsuario, :string
    add_column :users, :numDni, :string
    add_column :users, :numCelular, :string
    add_column :users, :imgUsuario, :string
  end
end
