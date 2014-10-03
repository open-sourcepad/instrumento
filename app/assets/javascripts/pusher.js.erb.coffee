jQuery ->
  pusher = new Pusher("<%= PUSHER_APP_KEY %>")

  if $("body").is(".jam-page")
    channel = pusher.subscribe($("#jam-page .jam-slug-channel").text())
    channel.bind "instrument-played", (data) ->
      delay = 1/4
      velocity = 127
      note = MIDI.pianoKeyOffset + data.note

      MIDI.programChange data.channel, 114
      MIDI.noteOn data.channel, note, velocity, delay
