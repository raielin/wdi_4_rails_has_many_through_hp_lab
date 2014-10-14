class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def edit
  end

  def create
      @course = Course.new(course_params)
    if @course.save
      redirect_to @course, notice: 'New course successfully added.'
    else
      render :new
    end
  end

  def update
    if @course.update_attributes(course_params)
      redirect_to @course, notice: 'Course info sucessfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: "Course was successfully removed."
  end

    private
    def find_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:course_name)
    end
end
