class JamsController < ApplicationController

  before_filter :find_jam, only: [:show]

  def show
  end

  def create
    @jam = Jam.create(jam_params)
    if @jam
      redirect_to jam_path(@jam)
    else
      redirect_to root_url
    end
  end

  private

  def find_jam
    @jam = Jam.friendly.find(params[:id])
  end

  def jam_params
    params.require(:jam).permit(:name)
  end

end