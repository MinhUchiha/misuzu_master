class BashokubunmstsController < ApplicationController
  before_action :set_bashokubunmst, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @bashokubunmsts = Bashokubunmst.all
    respond_with(@bashokubunmsts)
  end

  def show
    respond_with(@bashokubunmst)
  end

  def new
    @bashokubunmst = Bashokubunmst.new
    respond_with(@bashokubunmst)
  end

  def edit
  end

  def create
    @bashokubunmst = Bashokubunmst.new(bashokubunmst_params)
    flash[:notice] = t 'app.flash.new_success' if @bashokubunmst.save
    respond_with(@bashokubunmst)
  end

  def update
    flash[:notice] = t 'app.flash.update_success' if @bashokubunmst.update(bashokubunmst_params)
    respond_with(@bashokubunmst)
  end

  def destroy
    @bashokubunmst.destroy
    respond_with(@bashokubunmst)
  end

  private
    def set_bashokubunmst
      @bashokubunmst = Bashokubunmst.find(params[:id])
    end

    def bashokubunmst_params
      params.require(:bashokubunmst).permit(:場所区分コード, :場所区分名)
    end
end
