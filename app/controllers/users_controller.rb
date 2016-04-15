class UsersController < ApplicationController
	 before_filter :authenticate_user!
  

  def show
     binding.pry
  
      @user = User.find(params[:id])
      
    
   end

   def index
       @user = User.find(params[:user_id])
       @projects = Project.all
      respond_with(@Project)
   end

    def portfolio

       @user = User.find(params[:id])
      @projects = Project.all
      

     
        
    end




    private
	 def portfolio_params
      params.require(:portfolio).permit(:title, :slug, :description, :thumbnail, :is_adult, :status)
    end
    def image_params
      params.require(:portfolio).permit(post_attachments_attributes: [:image_url])
    end
    

   



end
 