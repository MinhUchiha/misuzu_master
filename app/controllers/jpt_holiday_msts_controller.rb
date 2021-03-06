class JptHolidayMstsController < ApplicationController
  before_action :set_jpt_holiday_mst, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :js

  def index
    @jpt_holiday_msts = JptHolidayMst.all
    respond_with(@jpt_holiday_msts)
  end

  def show
    respond_with(@jpt_holiday_mst)
  end

  def new
    @jpt_holiday_mst = JptHolidayMst.new
    respond_with(@jpt_holiday_mst)
  end

  def edit
  end

  def create
    @jpt_holiday_mst = JptHolidayMst.new(jpt_holiday_mst_params)
    flash[:notice] = t "app.flash.new_success" if @jpt_holiday_mst.save
    respond_with(@jpt_holiday_mst)
  end

  def update
    flash[:notice] = t "app.flash.update_success" if @jpt_holiday_mst.update(jpt_holiday_mst_params)
    respond_with(@jpt_holiday_mst)
  end

  def destroy
    @jpt_holiday_mst.destroy
    respond_with(@jpt_holiday_mst, location: jpt_holiday_msts_url)
  end

  private
    def set_jpt_holiday_mst
      @jpt_holiday_mst = JptHolidayMst.find(params[:id])
    end

    def jpt_holiday_mst_params
      params.require(:jpt_holiday_mst).permit(:event_date, :title, :description)
    end
end
