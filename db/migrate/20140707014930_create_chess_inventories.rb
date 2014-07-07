class CreateChessInventories < ActiveRecord::Migration
  def change
    create_table :chess_inventories do |t|
      t.boolean :entrytype
      t.string :partnumber
      t.integer :lotnumber
      t.integer :quantity
      t.integer :shelfnumber

      t.timestamps
    end
  end
end
