namespace :sr28 do
  desc 'TODO'
  task :import, [:path] => :environment do |task, arguments|
    puts "#{task}"
    binding.pry
    puts "#{arguments}"
  end
end
