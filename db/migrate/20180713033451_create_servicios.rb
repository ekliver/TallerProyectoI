class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      t.string :nomServicio
      t.string :inActivo

      t.timestamps
    end
  end
end
