require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Loteamento
  class Application < Rails::Application

    config.app_generators.scaffold_controller :responders_controller
    config.time_zone = 'Brasilia'
    config.i18n.default_locale = :"pt-BR"
    config.i18n.load_path += Dir["#{Rails.root.to_s}/config/locales/**/*.{rb,yml}"]

    config.active_record.raise_in_transactional_callbacks = true
  end
end
