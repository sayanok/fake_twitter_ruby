class TweetsController < ApplicationController
  def show
    @tweet = Tweet.find(params[:id])
  end

  def new
    @tweet = Tweet.new
    @user = User.find(1)
    # 現在ログインしているユーザーの情報を取得できるようにする
  end

  def create
    user_id = User.find(1).id
    @tweet = Tweet.new(item_params)
    # 現在ログインしているユーザーの情報を取得できるようにする

    if @tweet.save
      redirect_to root_path, notice: 'ツイートしました'
    else
      flash[:alert] = "ツイートに失敗しました。時間をおいて再投稿してください。"
    end
  end

  def destroy
    if Tweet.find(params[:id]).discard
      flash[:success] = "ツイートを削除しました"
      redirect_to root_path
    else
      flash[:alert] = "ツイートの削除に失敗しました。時間をおいて再度削除してください。"
    end

  end

  private

    def item_params
      params.require(:tweet).permit(:tweet_content).merge(user_id: 1)
      # 現在ログインしているユーザーのidに置き換える
    end
end
