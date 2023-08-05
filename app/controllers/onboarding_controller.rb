class OnboardingController < ApplicationController
  def index
    redirect_to onboarding_create_player_path
  end

  def create_player
    redirect_to onboarding_choose_background_path unless Current.player.nil?

    @player = Player.new
  end

  def choose_background
    redirect_to onboarding_choose_ship_path unless Current.player.qualities.nil?

    @player = Current.player
  end

  def choose_ship
    redirect_to Current.player unless Current.player.ship.nil?

    @ships = Ship.default_ships
  end
end
