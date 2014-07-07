class RemoveLotnumberFromChessInventories < ActiveRecord::Migration
  def change
    remove_column :chess_inventories, :lotnumber
  end
end
