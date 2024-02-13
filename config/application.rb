require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloRailsBackend
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
    config.api_only = true

    if Rails.env.development?
      config.middleware.insert_before 0, Rack::Cors do
        allow do
          origins '*'
          resource '*',
            headers: :any,
            methods: [:get, :post, :put, :patch, :delete, :options, :head]
        end
      end
    end

  end
end
