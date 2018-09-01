class MediaFilesController < ApplicationController
	
	def index 
		
	end

	def new 
		@media_file = MediaFile.new
		@media_file.categories.build
	end

	def create  
		byebug
		@media_file = MediaFile.new(media_file_params)
		if @media_file.save!
			redirect_to :back
		else 
		end 
	end

	def show
		
	end

	def edit 
		
	end

	def update 
		
	end

	def destroy 
		
	end

	private 

	def media_file_params
		params.require(:media_file).permit(:name, :media_file, :comment, 
																			 category_attributes: [:name, :_destroy])
	end

end 