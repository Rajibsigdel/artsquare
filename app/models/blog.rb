class Blog < ActiveRecord::Base
	#default_scope { order(created_at: :desc) }
	 mount_uploader :image_url, ImageUploader
	extend FriendlyId
  friendly_id :title, use: :slugged
end
