class CreateLocals < ActiveRecord::Migration[5.2]
  def change
    create_table :locals do |t|
      t.string :nomLocal
      t.string :numLatitud
      t.string :numLongitud
      t.string :dirLocal
      t.string :nomDistrito
      t.string :numTelefono
      t.string :inAbierto

      t.timestamps
    end
  end
end
