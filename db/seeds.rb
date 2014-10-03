if ApiKey.count == 0
  ApiKey.delete_all
  4.times do
    ApiKey.create(name: "IOS", token: SecureRandom.base64(24))
  end
end