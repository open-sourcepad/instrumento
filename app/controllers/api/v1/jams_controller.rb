class Api::V1::JamsController < ApplicationController

  before_filter :authenticate_token, only: [:play]

  def play
    Player.new(params[:audio_channel], params[:instrument]).play
    render json: { message: "Success", status: 200}, status: 200
  rescue
    render json: { message: "Failed", status: 200}, status: 200
  end

  private

  def authenticate_token
    unless ApiKey.all.map(&:token).include?(params[:token])
      render json: {
                      error: "Invalid token",
                      status: 401
                   }, status: 401
    end
  end

end