class HomeController < ApplicationController

  def index
    @channels = Pusher.get('/channels')
  end
end
