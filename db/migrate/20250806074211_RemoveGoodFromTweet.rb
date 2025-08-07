class RemoveGoodFromTweet< ActiveRecord::Migration[7.1]
  def up
    remove_column :good, :tweet
  end

  def down
    add_column :good, :tweet, :integer
  end
