require 'spreadsheet_architect/action_controller_renderers'

require 'spreadsheet_architect/exceptions'
require 'spreadsheet_architect/utils'

require 'spreadsheet_architect/class_methods/csv'

module SpreadsheetArchitect
  def self.included(base)
    base.send(:extend, ClassMethods)
  end

  extend SpreadsheetArchitect::ClassMethods

  @default_options = {
    headers: true,
    header_style: {background_color: "AAAAAA", color: "FFFFFF", align: :center, bold: false, font_name: 'Arial', font_size: 10, italic: false, underline: false},
    row_style: {background_color: nil, color: "000000", align: :left, bold: false, font_name: 'Arial', font_size: 10, italic: false, underline: false}
  }

  def self.default_options=(val)
    @default_options = val
  end

  def self.default_options
    @default_options
  end
end
