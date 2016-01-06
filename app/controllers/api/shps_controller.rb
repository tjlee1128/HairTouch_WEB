module Api
  class ShpsController < ApplicationController
    respond_to :json

    def index
      @shps = Shp.all
      respond_with(@shps)
    end
  end
end
