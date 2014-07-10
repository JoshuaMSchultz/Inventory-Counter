class ChessInventory < ActiveRecord::Base

  validates :partnumber, presence: true
  validates :quantity, presence: true
  
  before_save do
    self.quantity = self.quantity * -1 if shipment_outgoing?
  end
  
  def shipment_outgoing?
    if self.shipment_type == 3 
      true
    else
      false
    end
  end
  
  def shipment_plain_english
  case self.shipment_type
    when 1
      p "Count"
    when 2
      p "Incoming"
    when 3
      p "Outgoing"
    end
  end
  

      
  
end
