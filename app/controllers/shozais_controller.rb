class ShozaisController < ApplicationController
  before_action :set_shozai, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  respond_to :js

  def index
    @shozais = Shozai.all
    @shozai = Shozai.new
    respond_with(@shozais)
  end

  def show
    respond_with(@shozai)
  end

  def new
    @shozai = Shozai.new
    respond_with(@shozai)
  end

  def edit
  end

  def create
    @shozai = Shozai.new(shozai_params)
    flash[:notice] = t 'app.flash.new_success' if @shozai.save
    respond_with(@shozai)
  end

  def update
    flash[:notice] = t 'app.flash.update_success' if @shozai.update(shozai_params_for_update)
    respond_with(@shozai)
  end

  def destroy
    @shozai.destroy
    respond_with @shozai, location: shozais_url
  end

  def import
    Shozai.delete_all
    Shozai.reset_pk_sequence
    Shozai.import(params[:file])

    notice = t 'app.flash.import_csv'
    redirect_to :back, notice: notice
  end

  private
    def set_shozai
      @shozai = Shozai.find(params[:id])
    end

    def shozai_params
      params.require(:shozai).permit(:所在コード, :所在名, :background_color, :text_color)
    end

    def shozai_params_for_update
      params.require(:shozai).permit(:所在名, :background_color, :text_color)
    end
end
