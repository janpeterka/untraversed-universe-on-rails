class OnboardingController < ApplicationController
  def index
    redirect_to onboarding_create_player_path
  end

  def create_player
    @player = Player.new
  end

  def choose_background
    @player = current_player
  end

  def choose_ship
    @ships = Ship.default_ships
  end
end
