class HealthTipsController < ApplicationController
  before_action :set_health_tip, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @health_tips = HealthTip.all
    respond_with(@health_tips)
  end

  def show
    respond_with(@health_tip)
  end

  def new
    @health_tip = HealthTip.new
    respond_with(@health_tip)
  end

  def edit
  end

  def create
    @health_tip = HealthTip.new(health_tip_params)
    @health_tip.save
    respond_with(@health_tip)
  end

  def update
    @health_tip.update(health_tip_params)
    respond_with(@health_tip)
  end

  def destroy
    @health_tip.destroy
    respond_with(@health_tip)
  end

  private
    def set_health_tip
      @health_tip = HealthTip.find(params[:id])
    end

    def health_tip_params
      params.require(:health_tip).permit(:category, :tip)
    end
end
