# frozen_string_literal: true

namespace :sr28 do
  desc 'TODO'
  task :import, [:path] => :environment do |task, arguments|
    puts task.to_s
    binding.pry
    puts arguments.to_s
  end
end
