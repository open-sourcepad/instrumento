settings = YAML.load_file("#{Rails.root}/config/settings.yml")
PUSHER = settings["pusher"]
PUSHER_APP_KEY = PUSHER["key"]

Pusher.app_id = PUSHER["app_id"]
Pusher.key = PUSHER_APP_KEY
Pusher.secret = PUSHER["secret"]