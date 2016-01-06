class ShpownsController < ApplicationController
  respond_to :html, :json
  before_action :set_shpown, only: [:show, :edit, :update, :destroy]

  def index
    @shpowns = Shpown.all
    respond_with(@shpowns)
  end

  def show
    respond_with(@shpown)
  end

  def new
    @shpown = Shpown.new
    respond_with(@shpown)
  end

  def edit
  end

  def create
    @shpown = Shpown.new(shpown_params)
    @shpown.save
    respond_with(@shpown)
  end

  def update
    @shpown.update(shpown_params)
    respond_with(@shpown)
  end

  def destroy
    @shpown.destroy
    respond_with(@shpown)
  end

  private

  def set_shpown
    @shpown = Shpown.find(params[:id])
  end

  def shpown_params
    params.require(:shpown).permit(:shpown_email, :shpown_pwd, :shpown_nm)
  end
end
