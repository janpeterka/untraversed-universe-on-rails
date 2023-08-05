class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(name: params[:name])
    p @player
    if @player.save
      redirect_to @player
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @player = Player.first
  end
end
