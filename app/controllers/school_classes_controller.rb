class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.new(school_class_params)
    @school_class.save
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params)
    redirect_to set_school_class
  end

  private

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
