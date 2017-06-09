# frozen_string_literal: true

# I suppose this is meant to serve as a layer for common configuration
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
