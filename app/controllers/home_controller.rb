class HomeController < ApplicationController
  def index
    @tweets = Tweet.limit(30)
    # できれば無限スクロールで実装したい
  end
end
