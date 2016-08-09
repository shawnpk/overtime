class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index

  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post, notice: 'Your post has been created successfully'
    else
      render :new, notice: 'There was a problem creating your post'
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
