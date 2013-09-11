class GradesController < ApplicationController

	def index
		@grades = Grade.all
	end
	def show
		@grade = Grade.find(params[:id])
	end	
	def destroy
		@grade = Grade.find(params[:id])
		@grade.destroy

		redirect_to grade_path
	end

	def new
		@grade = Grade.new
	end

	def edit
		@grade = Grade.find(params[:id])
	end

	def update
		@grade = Grade.find(params[:id])
		@grade.update_attributes(params[:grade])
		if @grade.save
			redirect_to grades_path(params[:id])
		else
			redirect_to :back, notice: "Error"
			end
	end

	def create
		@grade = Grade.new(params[:grade])
		
		if @grade.save
			redirect_to grade_path(params[:id])
		else
			render :new
		end
	end
end