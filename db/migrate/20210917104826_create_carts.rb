class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :productId
      t.integer :productQty
      t.integer :productPrice
      t.integer :totalProducts
      t.integer :cartValue

      t.timestamps
    end
  end
end
