class CreateImagens < ActiveRecord::Migration[5.2]
  def change
    create_table :imagens do |t|
      t.string :urlImagen
      t.string :urlImagenPrevia

      t.timestamps
    end
  end
end
