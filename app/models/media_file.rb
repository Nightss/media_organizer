class MediaFile < ApplicationRecord
	belongs_to :image,  optional: true
	has_and_belongs_to_many :playlists
	has_many :categories_media_files
	has_many :categories, :through => :categories_media_files

 	mount_uploader :media_file, MediaFileUploader

 	accepts_nested_attributes_for :categories,
                                :allow_destroy => true
  
  accepts_nested_attributes_for :image 
end 