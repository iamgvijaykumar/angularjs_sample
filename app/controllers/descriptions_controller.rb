class DescriptionsController < ApplicationController

	def index
		@desc = Description.all
	end

	def new
		@desc = Description.new
	end

	def edit
		@desc = Description.find(params[:id])
	end

	def update
		
		@desc = Description.find(params[:id])

		if @desc.update(desc_params)
			flash[:notice] = "Description Updated Sucessfully"
			redirect_to description_path(@desc)
		else
			render 'edit'
		end

	end

	def destroy
		@desc = Description.find(params[:id])
		@desc.destroy
		flash[:notice] = "Description Sucessfully Deleted"
		redirect_to description_path
	
	end




	def create
		@desc = Description.new(desc_params)
		if @desc.save
			flash[:notice] = "Description Added Sucessfully"
			redirect_to description_path(@desc)
		else
			render 'new'
		end
		
	end

	def show
		@desc = Description.find(params[:id])
		redirect_to description_path

	end





	def desc_params
		params.require(:description).permit(:name, :description)
	end

end