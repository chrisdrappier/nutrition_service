# parses valid csv
class DataParser
  attr_reader :csv, :resource, :metadata
  def initialize(resource, csv, metadata)
    @resource = resource
    @csv = csv
    @metadata = metadata
  end

  def write_all
    all = []
    csv.each do |row|
      all << process_row(row)
    end
    all
  end

  def process_row(row)
    attrs = {}
    row.each_with_index do |cell, index|
      header = column_headers[index]
      puts header
      puts cell
      attrs[header] = cell
    end
    Abbrev.create(attrs)
  end

  def column_headers
    @column_headers ||= metadata.column_names
                                .collect do |column_name|
      column_name.delete('.')
                 .tr('+', '_')
                 .delete(' ')
    end
  end
end
