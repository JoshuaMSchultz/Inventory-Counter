class AddLocationToChessInventories < ActiveRecord::Migration
  def change
    add_column :chess_inventories, :location, :string
  end
end
