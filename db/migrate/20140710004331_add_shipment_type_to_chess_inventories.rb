class AddShipmentTypeToChessInventories < ActiveRecord::Migration
  def change
    add_column :chess_inventories, :shipment_type, :integer
  end
end
