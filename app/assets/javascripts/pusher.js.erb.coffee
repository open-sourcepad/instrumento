jQuery ->
  pusher = new Pusher("<%= PUSHER_APP_KEY %>")

  if $("body").is(".jam-page")
    channel = pusher.subscribe("jam-page-channel")
    channel.bind "music-played", (data) ->
      # alert("LET THE BEAT ROCK!")
      delay = 1/4
      velocity = 127
      note = MIDI.pianoKeyOffset + data.note

      MIDI.programChange 0, 0
      MIDI.programChange 1, 118

      MIDI.noteOn data.instrument, note, velocity, delay
      # MIDI.noteOn 1, note + 3, velocity, delay

