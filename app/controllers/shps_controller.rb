class ShpsController < ApplicationController
  respond_to :html, :json
  before_action :set_shp, only: [:show, :edit, :update, :destroy]

  def index
    @shps = Shp.all
    respond_with(@shp)
  end

  def show
    respond_with(@shp)
  end

  def new
    @shp = Shp.new
    respond_with(@shp)
  end

  def edit
    respond_with(@shp)
  end

  def create
    @shp = Shp.new(shp_params)
    @shp.save
    respond_with(@shp)
  end

  def update
    @shp.update(shp_params)
    respond_with(@shp)
  end

  def destroy
    @shp.destroy
    respond_with(@shp)
  end

  private

  def set_shp
    @shp = Shp.find(params[:id])
  end

  def shp_params
    params.require(:shp).permit(:shp_nm, :shp_tel, :shp_add)
  end
end
