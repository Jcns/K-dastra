class AddDeletedAtToCadProdutos < ActiveRecord::Migration[5.2]
  def change
    add_column :cad_produtos, :deleted_at, :datetime
    add_index :cad_produtos, :deleted_at
  end
end
