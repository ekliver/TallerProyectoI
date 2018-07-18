class ChangeUniqueUsuarios < ActiveRecord::Migration[5.2]
  def change
    change_column :usuarios, :logiUsuario, :string, unique: true
    change_column :usuarios, :nomUsuario, :string, unique: true
    change_column :usuarios, :correoUsuario, :string, unique: true
    change_column :usuarios, :apeUsuario, :string, unique: true
    change_column :usuarios, :numDni, :string, unique: true
    change_column :usuarios, :numCelular, :string, unique: true
  end
end
