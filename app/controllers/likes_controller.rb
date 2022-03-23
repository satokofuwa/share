class LikesController < ApplicationController
    before_action :set_likes, only: %i[ :create, :destroy ]

  def create
    if @likes.save
        redirect_to post_path, notice: "お気に入りに追加しました"
    end

  def delete
    @like.destroy
    redirect_to post_path,notice: "お気に入りを削除しました"
  end

  private
  def like_params
    params.require(:like).permit(:name,:title,:content,:image,:image_url,:image_cache)
  end
  def set_likes
    @like = current_user.likes.build(like_params)
  end

  end
end


