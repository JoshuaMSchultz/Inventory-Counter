json.array!(@chess_inventories) do |chess_inventory|
  json.extract! chess_inventory, :id, :entrytype, :partnumber, :lotnumber, :quantity, :shelfnumber
  json.url chess_inventory_url(chess_inventory, format: :json)
end
