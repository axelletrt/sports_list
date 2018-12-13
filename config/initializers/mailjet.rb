# frozen_string_literal: true

Mailjet.configure do |config|
  config.api_key = Rails.application.credentials.dig(:mailjet, :public_key)
  config.secret_key = Rails.application.credentials.dig(:mailjet, :secret_key)
  config.default_from = 'axelle.tortai@student.esc-rennes.com'
  config.api_version = 'v3.1'
end
