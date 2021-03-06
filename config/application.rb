require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevExam
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    config.time_zone='Tokyo'
    config.active_record.default_timezone=:local
    config.generators do |g|
      g.assets false
      g.helper false
    end
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
