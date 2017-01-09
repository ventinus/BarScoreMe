class BoutsController < ApplicationController
  before_action :set_bout, only: [:edit, :update, :destroy]

  def index
    @bouts = Bout.all
  end

  def new
    @bout = Bout.new
    @players = Player.all
  end

  def edit
  end

  def create
    @bout = Bout.new(bout_params)

    if @bout.save
      redirect_to admin_bouts_path, notice: 'Bout was successfully created.'
    else
      flash[:error] = 'Bout was not created.'
      render :new
    end
  end

  def update
    if @bout.update(bout_params)
      redirect_to admin_bouts_path, notice: 'Bout was successfully updated.'
    else
      flash[:error] = 'Bout was not updated.'
      render :edit
    end
  end

  def destroy
    if @bout.destroy
      redirect_to admin_bouts_path, notice: "Bout for #{@bout.game.title} for #{@bout.created_at} was removed as a bout."
    else
      flash[:error] = "Bout was not deleted. #{@bout.errors.full_messages.to_sentence}."
      redirect_to admin_bouts_path
    end
  end

  private

  def set_bout
    @bout = Bout.find(params[:id])
  end

  def bout_params
    params[:bout].permit(:game, :date)
  end
end
