class TownsController < ApplicationController
  def show
    @town = Town.find(params[:id])
  end
end
