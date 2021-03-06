class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :approve]

  def index
    @posts = Post.posts_by(current_user).page(params[:page]).per(10)
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
    authorize @post
  end

  def create
    @post = Post.create(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, notice: 'Your post has been created successfully'
    else
      render :new, notice: 'There was a problem creating your post'
    end
  end

  def update
    authorize @post

    if @post.update(post_params)
      redirect_to @post, notice: 'Your post has been updated'
    else
      render :edit, notice: 'Your post was not edited'
    end
  end

  def destroy
    @post.delete
    redirect_to posts_path, notice: 'Your entry has been deleted'
  end

  def approve
    authorize @post
    @post.approved!
    redirect_to root_path, notice: 'The post has been approved'
  end

  private
    def post_params
      params.require(:post).permit(:date, :rationale, :status, :overtime_request)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
