class BlogsController < ApplicationController

def index
	  	@blogs = Blog.page(params[:page]).per(2).order(created_at: :desc)
	  	@recent_blogs = Blog.limit(3).order(created_at: :desc)
        @popular_blogs = Blog.limit(3).order(views: :desc)
    end
    def show
    	@recent_blogs = Blog.limit(3).order(created_at: :asc)
    	@popular_blogs = Blog.limit(3).order(views: :asc)
    	@blog = Blog.friendly.find(params[:id])
    end

    def update_views
        blog = Blog.find_by(params[:id])
        blog.update(views: 10)
    end
  private
    def blog_params
      params.require(:blog).permit(:title, :details, :image_url)
    end
    
end

