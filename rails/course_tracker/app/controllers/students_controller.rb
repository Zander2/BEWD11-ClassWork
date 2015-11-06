class StudentsController < ApplicationController
    
    def index
        @students = Student.all
        @student = Student.new
        @courses = Course.new
        render "index"
    end
    
    def enrollments
        student_id = params[:id]
        @student = Student.find(student_id)
       render "enrollments" 
    end
    
    def enroll
        selection = params[:course_id]
        std_id = params[:id]
        p "This is student"
        p selection
        Enrollment.where(student_id: std_id).destroy_all
        selection.each do |crs_id|
            if crs_id
                Enrollment.create(student_id: std_id, course_id: crs_id)
            end
        end

       redirect_to students_path 
    end
    
    def create
       new_std = Student.new(student_params)
       new_std.save
       redirect_to students_path
    end
    
private    
    def student_params
        params.require(:student).permit(:name, :email, :age)
    end    
end
