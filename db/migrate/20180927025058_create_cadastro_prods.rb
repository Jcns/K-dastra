class CreateCadastroProds < ActiveRecord::Migration[5.2]
  def change
    create_table :cadastro_prods do |t|
      t.string :categoria
      t.string :produto
      t.decimal :preco
      t.text :info

      t.timestamps
    end
  end
end
