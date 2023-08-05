class ApplicationController < ActionController::Base
  before_action :set_current_player

  private

  def set_current_player
    Current.player = Player.first
  end
end
