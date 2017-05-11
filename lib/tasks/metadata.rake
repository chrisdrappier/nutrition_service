
namespace :metadata do
  task :generate_migrations, [:path] => :environment do |task, arguments|
    m_files = files(arguments.path)

    m_files.each do |file|
      file_name = file[0][0]
      csv = file[1][0]
      resource = get_resource(file_name)
      metadata = get_metadata(resource, csv)
      metadata.generate_migrations
    end
  end

  def get_resource(file_name)
    file_name.gsub('/Users/chris/sr28asc/SR_28 Metadata - ', '').gsub('.csv', '')
  end

  def files(path)
    metadata_file_names(path).collect do |file_name|
      [[file_name], [CSV.read(file_name)]]
    end
  end

  def metadata_file_names(path)
    Dir["#{path}*"].select { |f| f.include? 'SR_28 Metadata - ' }
  end

  def get_metadata(resource, csv)
    MetadataParser.new(resource, csv)
  end
end
