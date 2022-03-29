class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy like ]
  before_action :access,only: %i[edit destroy]
  include PostsHelper

  def index
    @posts= Post.all
  end

  def new
    @post = Post.new
  end

  def confirm
    @post = current_user.posts.build(post_params)
    render :new  if @post.invalid?
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = @current_user.id
      respond_to do |format|
        if @post.save
            ContactMailer.contact_mail(@post).deliver
            format.html { redirect_to post_url(@post), notice: "post confirmation was successfully sended. 
            please check your e-mail" }
            format.json { render :show, status: :created, location: @post }
        else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
    
  def update
    respond_to do |format|
      if @post.update(post_params)
          ContactMailer.contact_mail(@post).deliver
          format.html { redirect_to post_url(@post), notice: "投稿を更新しました" }
          format.json { render :show, status: :ok, location: @post }
      else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
      respond_to do |format|
        format.html { redirect_to posts_url, notice: "Posts was successfully destroyed." }
        format.json { head :no_content }
    end
  end

  def edit
    redirect_to edit_user_path(current_user.id)
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
    unless  @post.user_id == @current_user.id
      flash[:notice] = "権限がありません"
      redirect_to posts_path
    end
  end
end
