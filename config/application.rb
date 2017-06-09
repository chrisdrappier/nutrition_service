# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
require 'rails/test_unit/railtie'
require 'csv'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NutritionService
  # I do have to wonder why this class needs to exist just to hold these
  # things. should probably google and read.
  class Application < Rails::Application
    config.api_only = true
    config.autoload_paths += %W[#{config.root}/lib]
    config.autoload_paths += Dir["#{config.root}/lib/**/"]
  end
end
