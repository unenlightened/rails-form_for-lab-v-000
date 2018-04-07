class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.new(post_params)
    @school_class.save
    redirect_to @school_class
  end

  def show
  end

  def edit
  end

  def update
    set_school_class
    set_school_class.update(post_params)
    redirect_to set_school_class
  end

  private
  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :room_number)
  end
end
