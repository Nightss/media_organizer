class Category < ApplicationRecord
	has_many :categories_media_files
	has_many :media_files, :through => :categories_media_files
end 