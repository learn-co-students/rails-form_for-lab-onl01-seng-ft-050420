class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
    end

    def new
        @school_classes = SchoolClass.new
    end

    def edit
    end

    def create
        @school_classes = SchoolClass.create(student_params)
        redirect_to student_path(@student)
    end

    def update
        @school_classes = SchoolClass.update(school_class_params)
        redirect_to student_path(@student)
    end

    def delete
        @student.destroy
        redirect_to school_classes = th
    end
end