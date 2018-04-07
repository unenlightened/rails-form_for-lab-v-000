class StudentsController < ApplicationController

  def new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to @student
  end

  def show
  end

  def edit
  end

  def update
    set_student
    set_student.update(student_params)
    redirect_to set_student
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
