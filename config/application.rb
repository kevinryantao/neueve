require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lavax
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.


    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding                                    = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters                           += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version                              = '1.0'

    config.action_mailer.delivery_method       = :smtp
    config.x.mail_from = 'NeuEve <orders@neueve.com>'
    config.action_mailer.default_url_options = { host: 'neueve.com' }

    ActionMailer::Base.smtp_settings           = {
        address: 'email-smtp.us-east-1.amazonaws.com',
        user_name: ENV['AMZ_SES_USER_NAME'],
        password: ENV['AMZ_SES_PASSWORD']
    }
    config.action_mailer.raise_delivery_errors = true

    config.cache_store = :mem_cache_store

    # Adding fonts to the path
    config.assets.paths << Rails.root.join("app", "assets", "fonts")

  end
end
