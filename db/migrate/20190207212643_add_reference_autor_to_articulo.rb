class AddReferenceAutorToArticulo < ActiveRecord::Migration[5.2]
  def change
    add_reference :articulos, :autor, index: true
  end
end
