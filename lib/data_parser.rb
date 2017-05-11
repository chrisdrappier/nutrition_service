
class DataParser
  attr_reader :csv, :resource, :metadata
  def initialize(resource, csv, metadata)
    @resource = resource
    @csv = csv
    @metadata = metadata
  end

  def write_all
    all = []
    csv.each_with_index do |row, index|
      attrs = {}
      row.each_with_index do |cell, index|
        header = column_headers[index]
        attrs[header] = cell[1]
      end
      all << Abbrev.create(attrs)
    end
    return all
  end

  def column_headers
    @column_headers ||= csv.headers.collect {|h| h.gsub(/_\(.*\)|_ \(.*\)|_.g.*\)|_g/, '').gsub('+', '_').gsub('_µg', '_mcg').underscore }
  end
end
