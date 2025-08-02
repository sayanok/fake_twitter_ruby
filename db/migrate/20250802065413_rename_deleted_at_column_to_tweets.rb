class RenameDeletedAtColumnToTweets < ActiveRecord::Migration[7.1]
  def change
    rename_column :tweets, :deleted_at, :discarded_at
  end
end
