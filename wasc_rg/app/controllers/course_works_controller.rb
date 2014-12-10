class CourseWorksController < ApplicationController
  before_action :set_course_work, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course = Course.find(params[:course_id])
    @course_works = CourseWork.all
    respond_with(@course_works)
  end

  def show
    @course = Course.find(@course_work.course_id)
    respond_with(@course_work,@course)
  end

  def new
    @course = Course.find(params[:course_id])
    @course_work = CourseWork.new
    @path = [@course, @course_work]
    respond_with(@course_work)
  end

  def edit
    @path = @course_work
  end

  def create
    @course_work = CourseWork.new(course_work_params)
    @course_work.save
    respond_with(@course_work)
  end

  def update
    @course_work.update(course_work_params)
    respond_with(@course_work)
  end

  def destroy
    @course_work.destroy
    respond_with(@course_work)
  end

  def load_works
  end

  private
    def set_course_work
      @course_work = CourseWork.find(params[:id])
    end

    def course_work_params
      params.require(:course_work).permit(:name, :course_id)
    end
end
