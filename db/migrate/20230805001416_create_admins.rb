class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|

      t.string :email, null: false
      t.string :encrypted_password, null: false

      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      #t.timestamps
    end
  end
end
