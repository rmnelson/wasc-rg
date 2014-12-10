class CourseOutcomesController < ApplicationController
  before_action :set_course_outcome, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_outcomes = CourseOutcome.all
    respond_with(@course_outcomes)
  end

  def show
    respond_with(@course_outcome)
  end

  def new
    @course_outcome = CourseOutcome.new
    respond_with(@course_outcome)
  end

  def edit
  end

  def create
    @course_outcome = CourseOutcome.new(course_outcome_params)
    @course_outcome.save
    respond_with(@course_outcome)
  end

  def update
    @course_outcome.update(course_outcome_params)
    respond_with(@course_outcome)
  end

  def destroy
    @course_outcome.destroy
    respond_with(@course_outcome)
  end

  private
    def set_course_outcome
      @course_outcome = CourseOutcome.find(params[:id])
    end

    def course_outcome_params
      params.require(:course_outcome).permit(:course_work_id, :outcome_id)
    end
end
