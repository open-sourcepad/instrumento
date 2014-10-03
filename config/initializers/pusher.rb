settings = YAML.load_file("#{Rails.root}/config/settings.yml")
PUSHER = settings["pusher"]

Pusher.app_id = PUSHER["app_id"]
Pusher.key = PUSHER["key"]
Pusher.secret = PUSHER["secret"]