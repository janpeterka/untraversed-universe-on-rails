class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(name: params[:name])

    if @player.save
      redirect_to onboarding_choose_ship_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @player = Player.first
  end
end
