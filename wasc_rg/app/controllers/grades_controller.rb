class GradesController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @crouse = Course.find(params[:course_id])
    @grades = Grade.all
    respond_with(@grades)
  end

  def show
    respond_with(@grade)
  end

  def new
    @course = Course.find(params[:course_id])
    @grade = Grade.new
    @path = [@course,@grade]
    respond_with(@grade)
  end

  def edit
    @path = @grade
  end

  def create
    @grade = Grade.new(grade_params)
    @grade.save
    respond_with(@grade)
  end

  def update
    @grade.update(grade_params)
    respond_with(@grade)
  end

  def destroy
    @grade.destroy
    respond_with(@grade)
  end
  
  def load_grades
  end

  private
    def set_grade
      @grade = Grade.find(params[:id])
    end

    def grade_params
      params.require(:grade).permit(:corse_work_id, :student_id, :value)
    end
end
