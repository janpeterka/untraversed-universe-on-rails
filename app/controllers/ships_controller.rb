class ShipsController < ApplicationController
  def index
  end

  def create
    @ship = Ship.create_from(params[:ship_id].to_i)
    @ship.player = current_player
    @ship.save

    p @ship

    if @ship.save
      redirect_to player_path(@ship.player)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
