module Api
  class ShpsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    respond_to :json

    def index
      @shps = Shp.all
      respond_with(@shps)
    end

    def show
      @shp = Shp.find(params[:id])
      respond_with(@shp)
    end

    private

    def not_found
      head status: :not_found
    end
  end
end
