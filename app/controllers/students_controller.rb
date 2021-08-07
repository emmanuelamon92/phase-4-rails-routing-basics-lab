class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        students = Student.all
        sorted_students = students.sort_by {|student| -student[:grade] }

        render json: sorted_students
    end
end
