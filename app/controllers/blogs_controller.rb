class BlogsController < ApplicationController

  def index
    @blogs = Blogs.all
    render :index
  end

  def new
    render :new
  end

  def create
    @blog = Blog.create!(blog_params)
    redirect_to "/blogs/#{@blog.id}"
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Artist.find(params[:id])
    @blog.update(blog_params)
    redirect_to "/blogs/#{@blog.id}"
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to "/blogs"
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end

end
