class CreateCadProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :cad_produtos do |t|
      t.string :categoria
      t.string :produto
      t.text :caracteristica
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
