require_relative 'boot'

require 'rails/all'

ENV['CFLAGS'] = '-I/usr/local/Cellar/tesseract/3.05.02/include'
ENV['LDFLAGS'] = '-L/usr/local/Cellar/tesseract/3.05.02/lib'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Strawberry
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
