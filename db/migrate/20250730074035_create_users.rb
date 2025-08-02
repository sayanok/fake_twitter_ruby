class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :account_name, null: false
      t.text :description
      t.string :email, null: false
      t.string :password, null: false
      t.timestamps
    end
  end
end
