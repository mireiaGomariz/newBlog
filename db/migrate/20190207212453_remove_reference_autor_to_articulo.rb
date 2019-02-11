class RemoveReferenceAutorToArticulo < ActiveRecord::Migration[5.2]
  def change
    remove_column :articulos, :autor_id
  end
end
