class ProjectsController < InheritedResources::Base
before_action :authenticate_user!

def create
		@project = Project.new(project_params)
 	    @project.user_id = current_user.id
  		if @project.save
  			params[:post_attachments]['image_url'].each do |a|
          @project.projectimages.create!(:image_url => a)
       end
  		redirect_to @project
  		else
  			render 'new'
  		end
	end




  def show
    
    @project = Project.find(params[:id])
  
   


  end

  def like
    @project = Project.find(params[:id])
    @like = Like.all


  end




  private
    def project_params
      params.require(:project).permit(:title, :slug, :description, :thumbnail, :is_adult, :status)
    end
    def image_params
      params.require(:project).permit(post_attachments_attributes: [:image_url])
    end
    
end

