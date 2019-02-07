class ChangeDataTypeForArticulos < ActiveRecord::Migration[5.2]
  def change
    change_colum :articulos, :categoria_id, :text
  end
end
