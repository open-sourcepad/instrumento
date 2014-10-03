jQuery ->
  pusher = new Pusher("<%= PUSHER_APP_KEY %>")

  if $("body").is(".jam-page")
    channel = pusher.subscribe($("#jam-page .jam-slug-channel").text())
    channel.bind "instrument-played", (data) ->
      delay = 1/4
      velocity = 127
      note = MIDI.pianoKeyOffset + parseInt(data.instrument)

      MIDI.programChange data.audio_channel, 114
      MIDI.noteOn parseInt(data.audio_channel), note, velocity, delay
