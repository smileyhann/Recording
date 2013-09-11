class LevelsController < ApplicationController

	def index
		@levels = Level.all
	end
	def show
		@level = Level.find(params[:id])
	end	
	def destroy
		@level = Level.find(params[:id])
		@level.destroy

		redirect_to level_path
	end

	def new
		@level = Level.new
	end

	def edit
		@level = Level.find(params[:id])
	end

	def update
		@level = Level.find(params[:id])
		@level.update_attributes(params[:level])
		if @level.save
			redirect_to levels_path(params[:id])
		else
			redirect_to :back, notice: "Error"
			end
	end

	def create
		@level = Level.new(params[:level])
		
		if @level.save
			redirect_to level_path(params[:id])
		else
			render :new
		end
	end
end