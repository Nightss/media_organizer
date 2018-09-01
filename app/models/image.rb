class Image < ApplicationRecord
	has_many :media_files

	mount_uploader :image_file, ImageFileUploader
end 