class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :product_name, null: false
      t.text :updated_at, null: false
      t.integer :price, null: false

      t.datetime :created_at, null: false
      #t.datetime :updated_at, null: false
    end
  end
end
