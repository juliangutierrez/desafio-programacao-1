class AddCountToPurchases < ActiveRecord::Migration[5.1]
  def change
    add_column :purchases, :count, :integer
  end
end
