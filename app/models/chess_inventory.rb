class ChessInventory < ActiveRecord::Base
  validates :partnumber, presence: true
  validates :quantity, presence: true
end
