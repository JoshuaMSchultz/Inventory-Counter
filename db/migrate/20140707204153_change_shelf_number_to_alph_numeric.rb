class ChangeShelfNumberToAlphNumeric < ActiveRecord::Migration
  def change
    change_column :chess_inventories, :shelfnumber, :string
  end
end
