class StudentsController < ApplicationController

  def index
    students = Student.all

    if request.params.present?
      filtered = students.filter {|s| s.first_name == params[:first_name] && s.last_name == params[:last_name]}
      #byebug
      render json: filtered
    else 
      render json: students
    end
      
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
