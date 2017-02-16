require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Wimixer
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.action_view.field_error_proc = proc { |html_tag, instance| html_tag }
  end
end
