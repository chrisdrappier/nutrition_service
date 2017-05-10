# controllerfor DataSrc resource
class DataSrcController < ApplicationController
  def show
    @data_src = CSV.read('/Users/chris/sr28asc/DATA_SRC-copy.txt',
                         col_sep: '^',
                         row_sep: '\r\n',
                         quote_char: '~').to_json
    render json: @data_src
  end

  def index
    @data_src = []

    File.foreach('/Users/chris/sr28asc/DATA_SRC.txt') do |row|
      @data_src << row.split('^').collect { |cell| cell.gsub('~', '').gsub(/\r\n/, '') }
    end

    render json: @data_src
  end
end
