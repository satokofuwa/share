class LikesController < ApplicationController
  before_action :set_params, only: %i[ :create. :destroy ]

  def create
    like = current_user.likes.create(post_id: params[:post_id])  
    redirect_to posts_path, notice: "#{like.user.name}さんがお気に入りに追加しました"
  end

  def destroy
    like = current_user.likes.find_by(id: params[:id]).destroy
    redirect_to posts_path,notice: "#{like.user.name}さんがお気に入りを削除しました"
  end

  def show
    @likes = current_user.like_posts
  end

  private
  
  def set_likes
    @like = current_user.likes.build(like_params)
   end
end
