class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.string :nomEmpresa
      t.string :desEmpresa
      t.string :urlLogo
      t.string :numSoporte
      t.string :nomSkype
      t.string :inClave

      t.timestamps
    end
  end
end
