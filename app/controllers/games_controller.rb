class GamesController < ApplicationController
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to admin_games_path, notice: 'Game was successfully created.'
    else
      flash[:error] = 'Game was not created.'
      render :new
    end
  end

  def update
    if @game.update(game_params)
      redirect_to admin_games_path, notice: 'Game was successfully updated.'
    else
      flash[:error] = 'Game was not updated.'
      render :edit
    end
  end

  def destroy
    if @game.destroy
      redirect_to admin_games_path, notice: "Game for #{@game.name} for #{@game.created_at} was removed as a game."
    else
      flash[:error] = "Game was not deleted. #{@game.errors.full_messages.to_sentence}."
      redirect_to admin_games_path
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params[:game].permit(:name)
  end
end
