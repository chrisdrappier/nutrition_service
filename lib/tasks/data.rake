require 'csv'
namespace :data do
  task :import, [:data_file_path, :metadata_file_path] => :environment do |task, arguments|
    return unless File.exists?(arguments.data_file_path)
    return unless File.exists?(arguments.metadata_file_path)

    metadata_parser = MetadataParser.new('ABBREV', CSV.read(arguments.metadata_file_path))
    data_parser = DataParser.new('ABBREV', CSV.read(arguments.data_file_path), metadata_parser)
    data_parser.write_all
  end

  def abbrev_columns(data_parser)
    data_parser.headers.collect {|h| h.gsub(/_\(.*\)|_ \(.*\)|_mg\)|_g|_IU/, '').gsub('+', '_').underscore }
  end
end
