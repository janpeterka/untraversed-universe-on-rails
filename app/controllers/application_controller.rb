class ApplicationController < ActionController::Base
  def current_player
    Player.first
  end
end
