class JamsController < ApplicationController

  before_action :find_jam

  def show

  end

  private

  def find_jam
    Jam.where(name: params[:id]).first
  end

end