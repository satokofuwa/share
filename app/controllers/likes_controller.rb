class LikesController < ApplicationController
    before_action :set_likes, only: %i[ :create, :destroy ]

  def create
    like = current_user.likes.create(post_id: params[:post_id])  
        redirect_to posts_path, notice: "#{like.user.name}さんのお気に入りに追加しました"
  end

  def destroy
    like = current_user.likes.find_by(id: params[:id]).destroy
    redirect_to posts_path,notice: "#{like.user.name}さんのお気に入りを削除しました"
  end

  private
  def like_params
    params.require(:like).permit(:name,:title,:content,:image,:image_url,:image_cache)
  end
  def set_likes
    @like = current_user.likes.build(like_params)
  end

end


