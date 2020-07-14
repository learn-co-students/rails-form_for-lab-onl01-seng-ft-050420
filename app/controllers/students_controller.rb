class StudentsController < ApplicationController

    def index
        @students = Student.all
    end

    def show
        set_student
    end

    def new
        @student = Student.new
    end

    def edit
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def update
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    def delete
        @student.destroy
        redirect_to students_path
    end

private

    def set_student 
        @student = Student.find(params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

end
