class PostsController < ApplicationController
    before_action :set_post, only: %i[ show edit update destroy ]
    before_action :access,only: %i[edit destroy]
  def index
    @posts= Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if @post.save
        redirect_to post_path #show 画面へ
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to user_url(@pos), notice: "投稿を更新しました" }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def edit
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:title, :content,:image,:image_url,:image_cache)
  end
  def set_post
    @post = Post.find(params[:id])
  end

  def access
    unless @current_user.id && @post.user.id == @current_user.id
    flash[:notice] = "権限がありません"
    redirect_to posts_path
    end
  end
end
