class SchoolsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private
  def set_school
    @school = School.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :room_number)
  end
end
