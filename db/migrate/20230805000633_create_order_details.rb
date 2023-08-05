class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|

      t.integer :item_id, null: false
      t.integer :order_id, null: false
      t.integer :amount, null: false
      t.integer :purchase_price, null: false

      #t.datetime :created_at, null: false
      #t.datetime :updated_at, null: false

      t.timestamps null: false
    end
  end
end
