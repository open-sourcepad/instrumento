class JamsController < ApplicationController

  before_action :find_jam

  def show
  end

  private

  def find_jam
    @jam = Jam.find_by name: params[:id]
  end

end