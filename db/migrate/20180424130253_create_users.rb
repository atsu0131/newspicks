class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id, null: false,foreign_key: true
      t.string :name, null: false,foreign_key: true
      t.string :email, index: true,null: false
      t.string :company
      t.string :position
      t.text :profile
      t.text :icon
      t.timestamps null: false
    end
  end
end
