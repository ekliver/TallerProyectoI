class CreateProveedors < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedors do |t|
      t.string :razon_social
      t.string :direccion
      t.string :distrito
      t.string :provincia
      t.string :departamento
      t.string :telefono
      t.string :celular1
      t.string :celular2
      t.string :correo
      t.string :tipo_servicio
      t.string :latitud
      t.string :longitud
      t.string :url
      t.string :hora_inicio
      t.string :hora_fin
      t.string :foto_local

      t.timestamps
    end
  end
end
