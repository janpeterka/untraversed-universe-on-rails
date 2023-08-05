class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    @planet = Planet.generate

    redirect_to @planet
  end

  def show
    @planet = Planet.find(params[:id])
  end
end
