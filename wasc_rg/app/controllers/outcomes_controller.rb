class OutcomesController < ApplicationController
  before_action :set_outcome, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @outcomes = Outcome.all
    respond_with(@outcomes)
  end

  def show
    respond_with(@outcome)
  end

  def new
    @outcome = Outcome.new
    respond_with(@outcome)
  end

  def edit
  end

  def create
    @outcome = Outcome.new(outcome_params)
    @outcome.save
    respond_with(@outcome)
  end

  def update
    @outcome.update(outcome_params)
    respond_with(@outcome)
  end

  def destroy
    @outcome.destroy
    respond_with(@outcome)
  end

  private
    def set_outcome
      @outcome = Outcome.find(params[:id])
    end

    def outcome_params
      params.require(:outcome).permit(:objective_letter, :description, :program_id)
    end
end
