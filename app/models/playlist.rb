class Playlist < ApplicationRecord
	has_and_belongs_to_many :media_files 
end 