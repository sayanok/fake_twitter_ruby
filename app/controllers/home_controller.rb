class HomeController < ApplicationController
  def index
    @tweets = Tweet.limit(30)
    # できれば無限スクロールで実装したい
    # 件数は変数にする
  end
end
