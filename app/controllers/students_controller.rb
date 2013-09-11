class StudentsController < ApplicationController

	def index
		@students = Student.all
	end
	def show
		@student = Student.find(params[:id])
	end	
	def destroy
		@student = Student.find(params[:id])
		@student.destroy

		redirect_to student_path
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update_attributes(params[:student])
		if @student.save
			redirect_to students_path(params[:id])
		else
			redirect_to :back, notice: "Error"
			end
	end

	def create
		@student = Student.new(params[:student])
		
		if @student.save
			redirect_to student_path(params[:id])
		else
			render :new
		end
	end
end