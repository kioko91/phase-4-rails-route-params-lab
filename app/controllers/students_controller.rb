class StudentsController < ApplicationController

  def index
    students = Student.all

    if params[:first_name]
      students = Student.where("first_name = ?", params[:first_name]).or(Student.where("last_name = ?", params[:last_name]))
      render json: students
    else
    render json: students
    end
    
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

  

end
