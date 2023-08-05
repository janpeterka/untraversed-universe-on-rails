class ShipsController < ApplicationController
  def index
  end

  def create
    @ship = Ship.create_from(params[:ship_id].to_i)
    @ship.player = current_player
    @ship.save

    if @ship.save
      redirect_to player_path(@ship.player)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @ship = Ship.find(params[:id])
  end
end
