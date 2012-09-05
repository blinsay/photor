require 'fileutils'
require 'digest'

require_relative 'photor/photo'
require_relative 'photor/jpeg'
require_relative 'photor/exif'

require_relative 'photor/organizer'
require_relative 'photor/searcher'

module Photor
  def self.each_jpeg(dir, &block)
    Dir.glob(File.join(dir, '**', '*.{jpg,jpeg,JPG,JPEG}')).each do |o_path|
      yield Photor::JPEG.new(o_path)
    end
  end
end