secret = Rails.env.production? ? ENV['SECRET_TOKEN'] : '73c9d07dc55bf0b6b1ad686da7aa4dd1ee89722d1b3a59d27e9f6873a5506928366919910b020ace25c40cd0eac7f387821ebde5835a020d718719d5c79cb894'
Aperture::Application.config.secret_key_base = secret
