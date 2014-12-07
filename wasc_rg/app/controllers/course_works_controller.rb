class CourseWorksController < ApplicationController
  before_action :set_course_work, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_works = CourseWork.all
    respond_with(@course_works)
  end

  def show
    respond_with(@course_work)
  end

  def new
    @course_work = CourseWork.new
    respond_with(@course_work)
  end

  def edit
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

  private
    def set_course_work
      @course_work = CourseWork.find(params[:id])
    end

    def course_work_params
      params.require(:course_work).permit(:name, :course_id)
    end
end
