class Tweet < ApplicationRecord
include Discard::Model
validates :user_id, presence: true
validates :tweet_content, presence: true, length: {maximum: 200}

belongs_to :user
delegate :account_name, to: :user
end
