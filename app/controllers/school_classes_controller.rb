class SchoolsController < ApplicationController

  def new
  end

  def create
    @school = School.new(post_params)
    @school.save
    redirect_to @school
  end

  def show
  end

  def edit
  end

  def update
    set_school
    set_school.update(post_params)
    redirect_to set_school
  end

  private
  def set_school
    @school = School.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :room_number)
  end
end
