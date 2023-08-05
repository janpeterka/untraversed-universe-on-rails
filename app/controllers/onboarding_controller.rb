class OnboardingController < ApplicationController
  def index
    redirect_to onboarding_create_player_path
  end

  def create_player
    redirect_to onboarding_choose_background_path unless current_player.nil?

    @player = Player.new
  end

  def choose_background
    redirect_to onboarding_choose_ship_path unless current_player.qualities.nil?

    @player = current_player
  end

  def choose_ship
    redirect_to current_player unless current_player.ship.nil?

    @ships = Ship.default_ships
  end
end
