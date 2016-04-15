class Project < ActiveRecord::Base
	mount_uploader :thumbnail, ImageUploader
	has_many :projectimages, dependent: :destroy
	accepts_nested_attributes_for :projectimages
	has_many :like

end
