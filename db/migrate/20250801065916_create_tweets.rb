class CreateTweets < ActiveRecord::Migration[7.1]
  
  def change
    create_table :tweets do |t|
      t.belongs_to :user, foreign_key: true
      t.text :tweet_content
      t.integer :good
      t.integer :retweet
      t.boolean :is_deleted, default: false
      t.datetime :deleted_at, default: nil

      t.timestamps
    end
  end
end
