require_relative 'boot'

require "rails"

require "active_record/railtie"

Bundler.require(*Rails.groups)

class Application < Rails::Application
end
