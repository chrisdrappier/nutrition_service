# frozen_string_literal: true

# parses metadata csv file in preparation for import to the db
class MetadataParser
  attr_reader :resource, :csv
  def initialize(resource, csv)
    @resource = resource
    @csv = csv
  end

  def generate_migrations
    puts model_name
    migration = "rails g model #{model_name} #{columns.join(' ')}"
    puts migration
  end

  def model_name
    resource.titleize.delete(' ')
  end

  def column_names
    csv.collect { |row| row[0].underscore }
  end

  def columns
    csv.collect do |row|
      attributes = { model_name: model_name,
                     field_name: row[0],
                     data_type: row[1],
                     nullable: row[2],
                     description: row[3] }

      raw_data_type = attributes[:data_type].delete(' ')
      data_type = get_data_type(raw_data_type[0])
      field_name = attributes[:field_name].underscore
      "#{field_name}:#{data_type}"
    end
  end

  def get_data_type(raw_data_type)
    case raw_data_type
    when 'A'
      'string'
    when 'N'
      'decimal'
    when '1'
      'string'
    when '2'
      'string'
    when '9'
      'decimal'
    else
      raw_data_type
    end
  end
end
