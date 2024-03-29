require File.expand_path('../boot', __FILE__)


require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Wikipages
  class Application < Rails::Application
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
    config.action_controller.permit_all_parameters = true
  end
end
