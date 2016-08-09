class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
    @posts = Post.order('created_at ASC')
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
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
    if @post.update(post_params)
      redirect_to @post, notice: 'Your post has been updated'
    else
      render :edit, notice: 'Your post was not edited'
    end
  end

  private
    def post_params
      params.require(:post).permit(:date, :rationale)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
