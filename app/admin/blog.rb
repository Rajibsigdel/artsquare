ActiveAdmin.register Blog do
  
controller do
    def find_resource
      begin
        scoped_collection.where(slug: params[:id]).first!
      rescue ActiveRecord::RecordNotFound
        scoped_collection.find(params[:id])
      end
    end
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
permit_params(:title, :details, :image_url)

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

index do
    selectable_column
    column :id
    column :title
    column "details" do |blog|
          truncate(strip_tags(blog.details), omision: "...", length: 100)
    end
    
    column :created_at
    actions
  end

form(:html => { :multipart => true }) do |f|
    f.inputs "Member Form" do
      f.input :title
      f.input :details, :as => :ckeditor
      
      f.input :image_url, :as => :file, :hint => f.object.image_url.present? \
    ? image_tag(f.object.image_url.url(:middle))
    : content_tag(:span, "no cover page yet")
      f.input :image_url_cache, :as => :hidden 
    end
    f.actions
  end

  filter :title
  filter :details
  filter :created_at
  
show :title => :title, :only => :show do
  	
  		attributes_table do
      row :id
      row :title
      row :details do
        raw(blog.details)
      end
      row :image_url do
        blog.image_url.present? \
    ? image_tag(blog.image_url.url(:middle))
    : content_tag(:span, "no cover page yet")
        
      end
    end
    
  end

  end
