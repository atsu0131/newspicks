class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :company
      t.string :position
      t.text :profile
      t.text :icon
      t.timestamps null: false
    end
  end
end
