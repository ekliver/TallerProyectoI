class CreateEjes < ActiveRecord::Migration[5.2]
  def change
    create_table :ejes do |t|
      t.string :nomEje
      t.string :imgEje
      t.string :iconEje

      t.timestamps
    end
  end
end
