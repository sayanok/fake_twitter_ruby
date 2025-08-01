class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :account_name
      t.text :description
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
