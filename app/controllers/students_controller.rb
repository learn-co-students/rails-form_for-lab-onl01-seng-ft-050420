class StudentsController < ApplicationController 

    def index 
        @students = Student.all 
    end 

    def new 

    end 

    def create 
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end 

    def show 
        find_student
    end 

    def edit 
        find_student
    end 

    def update 
        @student = Student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end 

    private 

    def find_student 
        @student = Student.find(params[:id])
    end 
end 