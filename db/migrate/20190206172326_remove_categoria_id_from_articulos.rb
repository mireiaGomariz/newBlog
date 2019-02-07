class RemoveCategoriaIdFromArticulos < ActiveRecord::Migration[5.2]
  def change
    remove_column :articulos, :categoria_id, :text
  end
end
