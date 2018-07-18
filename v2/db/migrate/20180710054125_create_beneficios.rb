class CreateBeneficios < ActiveRecord::Migration[5.2]
  def change
    create_table :beneficios do |t|
      t.string :nomBeneficio
      t.string :imgBeneficio
      t.float :puntBeneficio
      t.integer :porcDescuento
      t.boolean :inFavorito
      t.integer :idFavorito
      t.integer :idEje
      t.string :nomEje
      t.string :iconEje
      t.string :iconSEje
      t.integer :idLocal
      t.string :inAbierto
      t.float :numLongitud
      t.float :numLatitud
      t.float :numDistancia
      t.string :nomDistrito

      t.timestamps
    end
  end
end
