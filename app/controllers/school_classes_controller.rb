class SchoolClassesController < ApplicationController 

    def index 
        @classes = SchoolClass.all 
    end 
    
    def new 

    end 

    def create 
        @class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_class_path(@class)
    end 

    def show 
        find_class
    end 

    def edit 
        find_class
    end 

    def update 
        @class = SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
        redirect_to school_classes_path(@class)
    end 

    private 

    def find_class 
        @class = SchoolClass.find(params[:id])
    end 
end 