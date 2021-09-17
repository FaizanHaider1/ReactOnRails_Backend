class AddColumnToCartTable < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :productName, :string
  end
end