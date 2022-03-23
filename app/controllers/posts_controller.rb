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
    @post = Post.new(post_params)
    if @post.save
        render :show, notice:'投稿に成功しました!'
    end
  end
  
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to user_url(@post), notice: "投稿を更新しました" }
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
    @like = current_user.likes.find_by(post_id: @post.id)
    
  end

  private
  def post_params
    params.require(:post).permit(:title,:content,:image,:image_url,:image_cache,:id)
  end
  def set_post
    @post = Post.find(params[:id])
  end

  def access
    unless @current_user.id && @post.id == @current_user.id
    flash[:notice] = "権限がありません"
    redirect_to posts_path
    end
  end
end

