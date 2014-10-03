class Player

  attr_accessor :audio_channel, :instrument

  def initialize audio_channel, instrument
    @audio_channel = audio_channel
    @instrument = instrument
  end

  def play
    # TODO - now only point to hackathon jam channel for testing purposes
    Pusher.trigger('hackathon-jam-channel','instrument-played', {audio_channel: audio_channel, instrument: instrument})
  end

end