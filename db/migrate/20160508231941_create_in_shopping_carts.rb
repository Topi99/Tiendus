class CreateInShoppingCarts < ActiveRecord::Migration
  def change
    create_table :in_shopping_carts do |t|
      t.references :product, index: true
      t.references :shopping_cart, index: true

      t.timestamps null: false
    end
    add_foreign_key :in_shopping_carts, :products
    add_foreign_key :in_shopping_carts, :shopping_carts
  end
end
