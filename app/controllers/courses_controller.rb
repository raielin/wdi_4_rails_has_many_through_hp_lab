class CoursesController < ApplicationController
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end


    private
    def find_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:course_name)
    end
end
