class CreateGrupoCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    create_table :grupo_caracteristicas do |t|
      t.text :caracteristicas
      t.references :cadastro_produto, foreign_key: true

      t.timestamps
    end
  end
end
