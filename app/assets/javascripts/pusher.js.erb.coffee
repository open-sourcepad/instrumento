jQuery ->
  pusher = new Pusher("<%= PUSHER_APP_KEY %>")

  if $("body").is(".jam-page")
    channel = pusher.subscribe("jam-page-channel")
    channel.bind "music-played", (data) ->
      alert("LET THE BEAT ROCK!")
