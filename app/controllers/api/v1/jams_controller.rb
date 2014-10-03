class Api::V1::JamsController < ApplicationController

  before_filter :authenticate_token, only: [:play]

  def play
    Player.new(params[:instrument])
  end

  private

  def authenticate_token
    unless ApiKey.all.map(&:token).include?(params[:token])
      render json: {
                      error: "Invalid token",
                      status: 400
                   }, status: 400
    end
  end

end