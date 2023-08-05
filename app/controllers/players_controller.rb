class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(name: params[:name])

    if @player.save
      redirect_to onboarding_choose_background_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def choose_background
    @player = Current.player
    Quality.create!(category: "background", name: params[:background], player: @player)

    redirect_to onboarding_choose_ship_path
  end

  def show
    @player = Current.player
  end
end
