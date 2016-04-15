class Projectimage < ActiveRecord::Base
	belongs_to :project
	mount_uploader :image_url, ImageUploader
end
