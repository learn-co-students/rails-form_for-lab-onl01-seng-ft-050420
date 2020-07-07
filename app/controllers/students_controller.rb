class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    # GET /students
    def index
        @students = Student.all
    end

    #GET /students/1
    def show
        set_student
    end

    #GET /students/new
    def new
        @student = Student.new
    end

    #GET /students/1/edit
    def edit
    end

    #POST /students
    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    #PATCH/PUT /students/1
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    #DELETE /students/1
    def destroy
        @student.destroy
        redirect_to students_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name)
    end

end