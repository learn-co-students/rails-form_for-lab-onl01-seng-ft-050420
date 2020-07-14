class StudentsController < ApplicatonController

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
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end

    def update
        @student = Student.update(student_params)
        redirecr_to student_path(@student)
    end

    def delete
        @student.destroy
        redirect_to students_path
    end

end
