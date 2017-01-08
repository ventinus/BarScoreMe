class PlayersController < ApplicationController
  before_action :set_player, only: [:edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def edit
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      redirect_to admin_administrators_path, notice: 'Player was successfully created.'
    else
      flash[:error] = 'Player was not created.'
      render :new
    end
  end

  def update
    if @player.update_with_password(player_params)
      redirect_to admin_players_path, notice: 'Player was successfully updated.'
    else
      flash[:error] = 'Player was not updated.'
      render :edit
    end
  end

  def destroy
    if @player.destroy
      redirect_to admin_players_path, notice: "#{@player.full_name} was removed as an player."
    else
      flash[:error] = "Player was not deleted. #{@player.errors.full_messages.to_sentence}."
      redirect_to admin_players_path
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params[:player].permit(:username)
  end
end
