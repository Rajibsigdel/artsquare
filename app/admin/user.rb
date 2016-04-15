ActiveAdmin.register User do

  menu priority: 2, label: "Users"
  permit_params(:username, :first_name, :last_name, :email, :password, :biography, :country, :avatar, :city, :status, :about_me, :facebook_url, :twitter_url)
index do
    selectable_column
    id_column
    column :username
    column :first_name
    column :last_name
    column :email
    actions
  end
  filter :email
  filter :username
  filter :first_name
  filter :last_name
 
 form do |f|
    f.inputs "Member Form" do
      f.input :username
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :biography
      f.input :city
      f.input :country, as: :select, collection: ActionView::Helpers::FormOptionsHelper::COUNTRIES
      f.input :avatar, :as => :file, :hint => f.object.avatar.present? \
    ? image_tag(f.object.avatar.url(:middle))
    : content_tag(:span, "no Avatar page yet")
    f.input :about_me
    f.input :facebook_url
    f.input :twitter_url
      
      f.input :status, :as => :select, collection: [['Active',1],['Deactive',0]], include_blank: false
    end
    f.actions
  end  


  show :title => :username, :only => :show do
    
      attributes_table do
      row :id
      row :username
      row :email 
      row :first_name
      row :last_name
      row :biography
      row :city
      row :country
      row :avatar do
        user.avatar.present? \
    ? image_tag(user.avatar.url(:middle))
    : content_tag(:span, "no cover page yet")
         end
         row :about_me
      row :facebook_url
      row :twitter_url
    end
    
  end

end
