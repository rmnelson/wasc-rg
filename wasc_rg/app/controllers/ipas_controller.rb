class IpasController < ApplicationController
  before_action :set_ipa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course = Course.find(params[:course_id])
    @ipas = Ipa.all
    respond_with(@course)
  end

  def show
    respond_with(@ipa)
  end

  def new
    @course = Course.find(params[:course_id])
    @ipa = Ipa.new
    @path = [@course,@ipa]
    respond_with(@ipa)
  end

  def edit
    @path = @ipa
  end

  def create
    @course = Course.find(params[:course_id])
    @ipa = Ipa.new(ipa_params)
    @ipa.save
    respond_with(@ipa)
  end

  def update
    @ipa.update(ipa_params)
    respond_with(@ipa)
  end

  def destroy
    @ipa.destroy
    respond_with(@ipa)
  end

  private
    def set_ipa
      @ipa = Ipa.find(params[:id])
    end

    def ipa_params
      params.require(:ipa).permit(:letter, :outcome_id, :course_id)
    end
end
