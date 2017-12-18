class Purchase < ApplicationRecord
  belongs_to :item
  belongs_to :purchaser

  def total
  	item.price * count
  end
end
